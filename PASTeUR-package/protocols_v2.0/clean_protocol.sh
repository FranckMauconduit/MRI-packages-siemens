#!/bin/bash

# cp -f /cygdrive/c/cygwin64/home/fm259423/github/MRI-packages-siemens/PASTeUR-package/protocols/ns_tfl_v2/* /cygdrive/c/cygwin64/home/fm259423/github/MRI-packages-siemens/PASTeUR-package/protocols/ns_tse_vfl_v2/.

while read file; do

    # echo -$file-
    filename=$(basename $file)
    filenamenoext=${filename%.*}
    # echo
    # echo $file
    # echo $filenamenoext
    
    
    pathname=$(echo ${file%/*})
    seqname=${pathname##*/}
    
    pathsystem=$(echo ${pathname%/*})
    system=${pathsystem##*/}
    # echo $system
    
    if [[ $system != "Iseult" ]] && [[ $system != "Terra" ]] && [[ $system != "7TPlus" ]]; then
        echo "Unknown system: \"$system\" for file $filename, skipping!"
        continue;
    fi
    
    # continue
    
    # Keep ASCONV part only
    sed -n -i '/ASCCONV BEGIN/,/ASCCONV END/p' $file
    # Rename protocol
    sed -i s/"tProtocolName.*"/"tProtocolName\t = \t\"$filenamenoext\""/1  $file
    # sed -i.bak s/"tProtocolName.*"/"tProtocolName\t = \t\"$filenamenoext\""/1  $file
    # Make sure sequence dll name is fine
    sed -i s/"\(tSequenceFileName.*Seq\%.\).*"/"\1$seqname\""/1  $file
    
    # If sequence dll is changed, it might be necessary to check for WipMemBlock parameters
    
    sed -i '/sProtConsistencyInfo./d' $file
    sed -i s/"sGRADSPEC.ucMode"/"sProtConsistencyInfo.tBaselineString	 = 	\"N4_VE12U_LATEST_20181126\"\r\nsProtConsistencyInfo.tSystemType	 = 	\"042\"\r\nsProtConsistencyInfo.flNominalB0	 = 	6.98093605042\r\nsProtConsistencyInfo.flGMax	 = 	40.0\r\nsProtConsistencyInfo.flRiseTime	 = 	5.0\r\nsProtConsistencyInfo.lMaximumNofRxReceiverChannels	 = 	64\r\nsGRADSPEC.ucMode"/1  $file
    
    if [[ $system == "Iseult" ]]; then
    # For Iseult
    sed -i s/"sProtConsistencyInfo.tSystemType.*"/"sProtConsistencyInfo.tSystemType\t = \t\"442\""/ $file
    sed -i s/"sProtConsistencyInfo.flNominalB0.*"/"sProtConsistencyInfo.flNominalB0\t = \t11.6999998093"/ $file
    fi
    
    if [[ $system == "Terra" ]]; then
    # For Terra
    sed -i s/"sProtConsistencyInfo.tSystemType.*"/"sProtConsistencyInfo.tSystemType\t = \t\"042\""/ $file
    sed -i s/"sProtConsistencyInfo.flNominalB0.*"/"sProtConsistencyInfo.flNominalB0\t = \t6.98093605042"/ $file
    fi
    
    if [[ $system == "7TPlus" ]]; then
    # For Terra Pus
    sed -i s/"sProtConsistencyInfo.tSystemType.*"/"sProtConsistencyInfo.tSystemType\t = \t\"142\""/ $file
    sed -i s/"sProtConsistencyInfo.flNominalB0.*"/"sProtConsistencyInfo.flNominalB0\t = \t6.98093605042"/ $file
    fi
    
    # Remove WipMemBlock.tFree
    sed -i '/WipMemBlock.tFree/d' $file
    
    # Remove distortion correction
    sed -i s/"sDistortionCorrFilter.ucMode.*"/"sDistortionCorrFilter.ucMode\t = \t1"/ $file
    
    # Switch to windows EOL
    echo "$(tr -d '\r' < $file)" > $file
    sed -i 's/$/\r/' $file
    
    
done < <(find /cygdrive/c/cygwin64/home/fm259423/github/MRI-packages-siemens/PASTeUR-package/protocols/ -type f -name "*.pro")

# Finally, let's keep ConsistencyInfo because without it, protocols end up losing pTx pulse while loading pro files
# sProtConsistencyInfo.tBaselineString	 = 	"N4_VE12U_LATEST_20181126"      not mandatory
# sProtConsistencyInfo.tSystemType	 = 	"142"                               mandatory (incl. value) "042" for Terra, "142" for Plus, "442" for Iseult
# sProtConsistencyInfo.flNominalB0	 = 	6.98093605042                       mandatory (incl. value) 
# sProtConsistencyInfo.flGMax	 = 	40.0                                    mandatory
# sProtConsistencyInfo.flRiseTime	 = 	5.0                                 mandatory
# sProtConsistencyInfo.lMaximumNofRxReceiverChannels	 = 	32              not mandatory

# Add sWipMemBlock.alFree required in:
# GRE
    # sWipMemBlock.alFree[63]	 = 	12345
# TFL
    # sWipMemBlock.alFree[2]	 = 	10
    # sWipMemBlock.alFree[63]	 = 	12345
# TSE_VFL
    # sWipMemBlock.alFree[0]	 = 	1       -> IF EPG CALC ACTIVATED
    # sWipMemBlock.alFree[63]	 = 	12345
    # sWipMemBlock.adFree[0]	 = 	0.98    -> SHOULD BE ALREADY THERE