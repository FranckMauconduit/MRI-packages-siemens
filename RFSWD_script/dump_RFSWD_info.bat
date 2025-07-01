: <<TRAMPOLINE
@echo off

if exist C:/cygwin64/bin/bash.exe (
    REM MyPC
    C:/cygwin64/bin/bash -c "exit 0" || (echo.No bash found in PATH! & pause & exit /b 1)
    C:/cygwin64/bin/bash "%~f0" "%*"
) else (
    REM SyngoMR
    bash -c "exit 0" || (echo.No bash found in PATH! & pause & exit /b 1)
    bash "%~f0" "%*"
)

pause
goto:eof

TRAMPOLINE
#####################
#!/bin/bash  -- it's a traditional bash script!

# COMMENT A LINE WITH "#"

echo
echo --------------------------------------- 
echo Script: `basename $0`
echo Version: 1.0
echo Author:  Franck Mauconduit
echo For more info, see:
echo https://github.com/FranckMauconduit/MRI-packages-siemens
echo --------------------------------------- 


ROOTFOLDER=/cygdrive/c/MedCom

RFSWDFile=$ROOTFOLDER/log/RFSWDHistoryListNew.log

RFSWD_Protocol=$ROOTFOLDER/rfswd_current_protocol.log
/usr/bin/rm -f $RFSWD_Protocol

RFSWD_ProtList=$ROOTFOLDER/rfswd_protocol_list.txt
/usr/bin/rm -f $RFSWD_ProtList

RFSWD_Info1=$ROOTFOLDER/rfswd_info1.txt
RFSWD_Info2a=$ROOTFOLDER/rfswd_info2a.txt
RFSWD_Info2b=$ROOTFOLDER/rfswd_info2b.txt
RFSWD_Info3a=$ROOTFOLDER/rfswd_info3a.txt
RFSWD_Info3b=$ROOTFOLDER/rfswd_info3b.txt
RFSWD_Info4=$ROOTFOLDER/rfswd_info4.txt

function print_rfswd_log
{
    echo RFSDW extraction in progress ...
    RFSWDFileTemp=$1
    
    get_rfswd_info1
    /usr/bin/cat $RFSWD_Info1 &
    
    get_rfswd_info2a &
    get_rfswd_info2b &
    get_rfswd_info3a &
    get_rfswd_info3b &
    get_rfswd_info4 &
    wait
    
    
     # time get_rfswd_info1
     # time get_rfswd_info2a
     # time get_rfswd_info2b
     # time get_rfswd_info3a
     # time get_rfswd_info3b
     # time get_rfswd_info4
    
    
    
    read -p "Press enter to print SAR lookahead"
    /usr/bin/cat $RFSWD_Info2a
    /usr/bin/cat $RFSWD_Info2b
    
    read -p "Press enter to print Online Monitoring"
    /usr/bin/cat $RFSWD_Info3a
    
    read -p "Press enter to print extra and status"
    /usr/bin/cat $RFSWD_Info3b
    /usr/bin/cat $RFSWD_Info4
}
function get_rfswd_info1
{
echo                                                                                 > $RFSWD_Info1
/usr/bin/grep "^ 100 " $RFSWDFileTemp | /usr/bin/tail -n 1                          >> $RFSWD_Info1
/usr/bin/grep "^ 300 " $RFSWDFileTemp | /usr/bin/tail -n 1                          >> $RFSWD_Info1
/usr/bin/grep "^ 301 " $RFSWDFileTemp | /usr/bin/tail -n 1                          >> $RFSWD_Info1
/usr/bin/grep "1208  Total Measurement Time" $RFSWDFileTemp | /usr/bin/tail -n 1    >> $RFSWD_Info1
/usr/bin/grep " TX pulse amplitude " $RFSWDFileTemp | /usr/bin/tail -n 10           >> $RFSWD_Info1
/usr/bin/grep "^ 402 " $RFSWDFileTemp | /usr/bin/tail -n 1                          >> $RFSWD_Info1
/usr/bin/grep "^ 403 " $RFSWDFileTemp | /usr/bin/tail -n 1                          >> $RFSWD_Info1
/usr/bin/grep "^1200 " $RFSWDFileTemp | /usr/bin/tail -n 1                          >> $RFSWD_Info1
/usr/bin/grep "^1211 " $RFSWDFileTemp | /usr/bin/tail -n 1                          >> $RFSWD_Info1
/usr/bin/grep "^ 610 " $RFSWDFileTemp | /usr/bin/tail -n 1                          >> $RFSWD_Info1
echo                                                                                >> $RFSWD_Info1
/usr/bin/grep "^ 900 " $RFSWDFileTemp | /usr/bin/tail -n 1                          >> $RFSWD_Info1
/usr/bin/grep "^ 901 " $RFSWDFileTemp | /usr/bin/tail -n 1                          >> $RFSWD_Info1
echo                                                                                >> $RFSWD_Info1
/usr/bin/grep "DiCoTest Phase Drift measured" $RFSWDFileTemp | /usr/bin/tail -n 1   >> $RFSWD_Info1
/usr/bin/grep "S11 Phase Drift measured" $RFSWDFileTemp | /usr/bin/tail -n 1        >> $RFSWD_Info1
echo                                                                                >> $RFSWD_Info1
# echo get_rfswd_info1 done.
}
function get_rfswd_info2a
{
echo SAR lookahead                                                                                                                                                                  > $RFSWD_Info2a
/usr/bin/grep "Aspect Value Relative a\[0\]i\[0\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"Aspect Value Relative a\[0\]i\[0\] "/"SAR 360s : Whole Body ........."/1 >> $RFSWD_Info2a 
/usr/bin/grep "Aspect Value Relative a\[4\]i\[0\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"Aspect Value Relative a\[4\]i\[0\] "/"SAR 360s : Torso Local ........"/1 >> $RFSWD_Info2a 
/usr/bin/grep "Aspect Value Relative a\[7\]i\[0\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"Aspect Value Relative a\[7\]i\[0\] "/"SAR 360s : Coils .............."/1 >> $RFSWD_Info2a 
/usr/bin/grep "Aspect Value Relative a\[3\]i\[0\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"Aspect Value Relative a\[3\]i\[0\] "/"SAR 360s : Head Local ........."/1 >> $RFSWD_Info2a 
echo                                                                                                                                                                               >> $RFSWD_Info2a
/usr/bin/grep "Aspect Value Relative a\[0\]i\[1\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"Aspect Value Relative a\[0\]i\[1\] "/"SAR 10s  : Whole Body ........."/1 >> $RFSWD_Info2a 
/usr/bin/grep "Aspect Value Relative a\[4\]i\[1\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"Aspect Value Relative a\[4\]i\[1\] "/"SAR 10s  : Torso Local ........"/1 >> $RFSWD_Info2a 
# echo get_rfswd_info2a done.
}
function get_rfswd_info2b
{
/usr/bin/grep "Aspect Value Relative a\[7\]i\[1\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"Aspect Value Relative a\[7\]i\[1\] "/"SAR 10s  : Coils .............."/1  > $RFSWD_Info2b
/usr/bin/grep "Aspect Value Relative a\[3\]i\[1\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"Aspect Value Relative a\[3\]i\[1\] "/"SAR 10s  : Head Local ........."/1 >> $RFSWD_Info2b
echo                                                                                                                                                                               >> $RFSWD_Info2b
/usr/bin/grep "Aspect Value Relative a\[0\]i\[2\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"Aspect Value Relative a\[0\]i\[2\] "/"SAR 1s   : Whole Body ........."/1 >> $RFSWD_Info2b
/usr/bin/grep "Aspect Value Relative a\[4\]i\[2\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"Aspect Value Relative a\[4\]i\[2\] "/"SAR 1s   : Torso Local ........"/1 >> $RFSWD_Info2b
/usr/bin/grep "Aspect Value Relative a\[7\]i\[2\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"Aspect Value Relative a\[7\]i\[2\] "/"SAR 1s   : Coils .............."/1 >> $RFSWD_Info2b
/usr/bin/grep "Aspect Value Relative a\[3\]i\[2\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"Aspect Value Relative a\[3\]i\[2\] "/"SAR 1s   : Head Local ........."/1 >> $RFSWD_Info2b
echo                                                                                                                                                                               >> $RFSWD_Info2b
echo                                                                                                                                                                               >> $RFSWD_Info2b
/usr/bin/grep "^1201 " $RFSWDFileTemp | /usr/bin/tail -n 1                                                                                                                         >> $RFSWD_Info2b
echo                                                                                                                                                                               >> $RFSWD_Info2b
# echo get_rfswd_info2b done.
}
function get_rfswd_info3a
{
echo Online Monitoring                                                                                                                                                   > $RFSWD_Info3a
/usr/bin/grep "PALIResultsMaxNB  j\[5\]v\[0\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"PALIResultsMaxNB  j\[5\]v\[0\] "/"Meas  360s   : Coils (W) .."/1  >> $RFSWD_Info3a
/usr/bin/grep "PALILimitsNB      j\[5\]v\[0\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"PALILimitsNB      j\[5\]v\[0\] "/"Limit 360s   : Coils (W) .."/1  >> $RFSWD_Info3a
echo                                                                                                                                                                    >> $RFSWD_Info3a
/usr/bin/grep "PALIResultsMaxNB  j\[5\]v\[1\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"PALIResultsMaxNB  j\[5\]v\[1\] "/"Meas  360s   : VOPs (W\/kg) "/1 >> $RFSWD_Info3a
/usr/bin/grep "PALILimitsNB      j\[5\]v\[1\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"PALILimitsNB      j\[5\]v\[1\] "/"Limit 360s   : VOPs (W\/kg) "/1 >> $RFSWD_Info3a
echo                                                                                                                                                                    >> $RFSWD_Info3a
/usr/bin/grep "PALIResultsMaxNB  j\[3\]v\[0\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"PALIResultsMaxNB  j\[3\]v\[0\] "/"Meas  10s    : Coils (W) .."/1  >> $RFSWD_Info3a
/usr/bin/grep "PALILimitsNB      j\[3\]v\[0\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"PALILimitsNB      j\[3\]v\[0\] "/"Limit 10s    : Coils (W) .."/1  >> $RFSWD_Info3a
echo                                                                                                                                                                    >> $RFSWD_Info3a
/usr/bin/grep "PALIResultsMaxNB  j\[3\]v\[1\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"PALIResultsMaxNB  j\[3\]v\[1\] "/"Meas  10s    : VOPs (W\/kg) "/1 >> $RFSWD_Info3a
/usr/bin/grep "PALILimitsNB      j\[3\]v\[1\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"PALILimitsNB      j\[3\]v\[1\] "/"Limit 10s    : VOPs (W\/kg) "/1 >> $RFSWD_Info3a
echo                                                                                                                                                                    >> $RFSWD_Info3a
# echo get_rfswd_info3a done.
}
function get_rfswd_info3b
{
echo Online Monitoring \(extra\)                                                                                                                                         > $RFSWD_Info3b
/usr/bin/grep "PALIResultsMaxNB  j\[2\]v\[3\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"PALIResultsMaxNB  j\[2\]v\[3\] "/"Meas   1s    : compat. CP ?"/1  >> $RFSWD_Info3b
/usr/bin/grep "PALILimitsNB      j\[2\]v\[3\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"PALILimitsNB      j\[2\]v\[3\] "/"Limit  1s    : compat. CP ?"/1  >> $RFSWD_Info3b
echo                                                                                                                                                                    >> $RFSWD_Info3b
/usr/bin/grep "PALIResultsMaxNB  j\[2\]v\[6\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"PALIResultsMaxNB  j\[2\]v\[6\] "/"Meas   1s    : Refl. Energy"/1  >> $RFSWD_Info3b
/usr/bin/grep "PALILimitsNB      j\[2\]v\[6\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"PALILimitsNB      j\[2\]v\[6\] "/"Limit  1s    : Refl. Energy"/1  >> $RFSWD_Info3b
echo                                                                                                                                                                    >> $RFSWD_Info3b
/usr/bin/grep "PALIResultsMaxNB  j\[3\]v\[7\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"PALIResultsMaxNB  j\[3\]v\[7\] "/"Meas  10s    : TALES fwd e."/1  >> $RFSWD_Info3b
/usr/bin/grep "PALILimitsNB      j\[3\]v\[7\] " $RFSWDFileTemp | /usr/bin/tail -n 1 | /usr/bin/sed s/"PALILimitsNB      j\[3\]v\[7\] "/"Limit 10s    : TALES fwd e."/1  >> $RFSWD_Info3b
echo                                                                                                                                                                    >> $RFSWD_Info3b
# echo get_rfswd_info3b done.
}
function get_rfswd_info4
{
echo                                                                                      > $RFSWD_Info4
echo RFSWD Status                                                                        >> $RFSWD_Info4
echo                                                                                     >> $RFSWD_Info4
/usr/bin/grep "RfswdStatusPrediction " $RFSWDFileTemp               | /usr/bin/tail -n 1 >> $RFSWD_Info4
/usr/bin/grep "RfswdStatusTracingLimitsExceeded " $RFSWDFileTemp    | /usr/bin/tail -n 1 >> $RFSWD_Info4
/usr/bin/grep "RfswdStatusPALISwitchedOff " $RFSWDFileTemp          | /usr/bin/tail -n 1 >> $RFSWD_Info4
/usr/bin/grep "RfswdStatus " $RFSWDFileTemp                         | /usr/bin/grep !    >> $RFSWD_Info4
# echo get_rfswd_info4 done.
}

function print_prot_list
{
    
    update_prot_list
    
    echo ---------------------------------------
    echo RFSWD file : $RFSWDFile
    /usr/bin/cat $RFSWD_ProtList | /usr/bin/sort -n | /usr/bin/uniq
    
    echo
    read -p "Choose a protocol to be printed: " res
    
    
    if [[ $(isPositiveInteger $res) -eq 0 ]]; then
        # echo Invalid answer
        return
    fi
    
    # get line of requested protocol
    line=$(/usr/bin/grep -n "Protocol Name" $RFSWDFile | /usr/bin/sed -n $res"p" | /usr/bin/cut -d: -f1)
    
    extract_protocol $line
    
    if [[ -f $RFSWD_Protocol ]]; then
        print_rfswd_log $RFSWD_Protocol
    fi
}

function get_lastest_prot
{
    # get line of latest protocol
    line=$(/usr/bin/grep -n "Protocol Name" $RFSWDFile | /usr/bin/tail -n 1 | /usr/bin/cut -d: -f1)
    
    extract_protocol $line
    
    if [[ -f $RFSWD_Protocol ]]; then
        print_rfswd_log $RFSWD_Protocol
    fi
}

function extract_protocol
{
    /usr/bin/rm -f $RFSWD_Protocol
    
    line=$1
    
    if [[ $(isPositiveInteger $line) -eq 0 ]]; then
        # echo Invalid answer
        return
    fi
    
    # move up roughtly to get all RFSWD info of requested protocol
    if [[ $line -lt 100 ]]; then
        line=1
    else
        line=$((line-100))
    fi
    
    # copy all RFSWD into a temp file
    /usr/bin/cp $RFSWDFile $RFSWD_Protocol

    # remove all before requested protocol
    /usr/bin/sed -i 1,$line"d" $RFSWD_Protocol

    # get begin of protocol precisely and remove all before
    beg=$( /usr/bin/grep -n "New History Entry" $RFSWD_Protocol | /usr/bin/head -n 1 | /usr/bin/cut -d: -f1 )
    /usr/bin/sed -i 1,$beg"d" $RFSWD_Protocol

    # get end of protocol precisely and remove all after
    end=$( /usr/bin/grep -n "RfswdStatusInternalError" $RFSWD_Protocol | /usr/bin/head -n 1 | /usr/bin/cut -d: -f1 )
    /usr/bin/sed -i -n 1,$end"p" $RFSWD_Protocol

    # check extracted protocol
    # grep "Protocol Name" $RFSWD_Protocol
    
}

function isPositiveInteger
{
    Limit=0
    if [[ $1 =~ ^[\-0-9]+$ ]] && (( $1 > $Limit)); then
        # echo "$1 is number and is greater than $Limit"
        echo 1
    else
        # echo "$1 is not a number or is <= $Limit"
        echo 0
    fi
}

function update_prot_list
{
    echo > $RFSWD_ProtList
    /usr/bin/grep "Protocol Name" $RFSWDFile | /usr/bin/cut -d: -f2 | /usr/bin/nl -w2 -s' -' >> $RFSWD_ProtList
    
    return
}

function change_rfswd_file
{
    # RFSWDFile
    echo ---------------------------------------
    echo Current selection: $RFSWDFile
    echo ---------------------------------------
    /usr/bin/ls -1t $ROOTFOLDER/log/RFSWDHistory*log | /usr/bin/nl -w2 -s' -'
    echo
    read -p "Choose a new RFSWD file: " rfswdres
    
    if [[ $(isPositiveInteger $rfswdres) -eq 0 ]]; then
        echo Invalid answer
        return
    fi
    
    Tempfile=$(/usr/bin/ls -1t $ROOTFOLDER/log/RFSWDHistory*log | /usr/bin/sed -n "$rfswdres"p)
    if [[ -f $Tempfile ]]; then
        RFSWDFile=$Tempfile
        echo New file: $Tempfile
    else
        echo File does not exist : $Tempfile
        return
    fi
    
    update_prot_list
    print_prot_list
}

function question_main
{
    echo
    echo ---------------------------------------
    echo RFSWD file : $RFSWDFile
    echo
    echo Choose an action:
    echo    1 - Display RFSWD of latest protocol
    echo    2 - Show all protocols
    echo    3 - Change RFSWD file
    echo
    read -p "Answer: " mainres
    # echo $mainres
    
    if [ "$mainres" == 1 ] || [ "$mainres" == "\&" ]; then
        get_lastest_prot
    elif [ "$mainres" == 2 ] || [ "$mainres" == "é" ]; then
        print_prot_list
    elif [ "$mainres" == 3 ] || [ "$mainres" == "\"" ]; then
        change_rfswd_file
    fi
    
}

update_prot_list

while true; do
    question_main
done