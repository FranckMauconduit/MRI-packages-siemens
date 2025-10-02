<XProtocol> 
{
  <ID> 1000001 
  <Userversion> 666.0 
  
  <ParamMap.""> 
  {
    <ParamMap."DMWL"> 
    {
      
      <ParamMap."Pause"> 
      {
        
        <ParamString."CodeValue">  { }
        <ParamString."CodingSchemeVersion">  { }
        <ParamString."CodingSchemeDesignator">  { }
        <ParamString."CodeMeaning">  { }
      }
      <ParamMap."Meas"> 
      {
        
        <ParamString."CodeValue">  { }
        <ParamString."CodingSchemeVersion">  { }
        <ParamString."CodingSchemeDesignator">  { }
        <ParamString."CodeMeaning">  { }
      }
    }
    <ParamMap."MultiStep"> 
    {
      
      <ParamBool."IsMultistep">  { }
      <ParamArray."SubStep"> 
      {
        <Default> <ParamLong.""> 
        {
        }
        { 1  }
        
      }
      <ParamBool."SaveNonnormalizedImages">  { "true"  }
      <ParamBool."IsInlineCompose">  { }
      <ParamLong."ComposingGroup">  { 1  }
      <ParamBool."IsLastStep">  { }
      <ParamChoice."ComposingFunction">  { <Limit> { "Angio" "Spine" "Adaptive" "Diffusion" } "Angio"  }
      <ParamChoice."ComposingNormalize">  { <Limit> { "Off" "Weak" "Medium" "Strong" } "Off"  }
      <ParamString."SeriesDescription">  { }
      <ParamLong."2DDistCor">  { }
      <ParamLong."DynDistCor">  { }
      <ParamLong."ScanAtCenterDummy">  { }
    }
    <ParamMap."OpenRecon"> 
    {
      
      <ParamString."OpenReconAlgorithm">  { }
      <ParamArray."Parameters"> 
      {
        <Default> <ParamMap.""> 
        {
          
          <ParamString."Id"> 
          {
          }
          
          <ParamString."ParameterValue"> 
          {
          }
        }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        
      }
    }
    <ParamMap."Properties"> 
    {
      
      <ParamMap."Reconstruction"> 
      {
        
        <ParamBool."recon_prio">  { }
      }
      <ParamMap."Sound"> 
      {
        
        <ParamString."PreSound">  { }
        <ParamString."PostSound">  { }
      }
      <ParamMap."AutoLoad"> 
      {
        
        <ParamBool."DisableAutoTransfer">  { }
        <ParamBool."AutoStore">  { "true"  }
        <ParamBool."LoadToFilming">  { "true"  }
        <ParamBool."LoadToViewer">  { "true"  }
        <ParamBool."LoadToStamp">  { }
        <ParamBool."LoadToGraphic">  { }
        <ParamChoice."GraphicSegmentChoice">  { <Limit> { "Default" "1st segment" "2nd segment" "3rd segment" "All segments" } "Default"  }
        <ParamBool."InlineMovie">  { }
        <ParamBool."AutoOpenInlineDisplay">  { }
        <ParamBool."AutoCloseInlineDisplay">  { }
        <ParamBool."InlinePositionDisplay">  { }
        <ParamChoice."InlinePositionDisplayOrientation">  { <Limit> { "All orientations" "Sag" "Cor" "Tra" } "All orientations"  }
      }
      <ParamMap."SlicePositioning"> 
      {
        
        <ParamBool."AutoAlignSpine">  { }
      }
      <ParamMap."Queue"> 
      {
        
        <ParamChoice."CoilSelectMode">  { <Limit> { "Default" "Auto Coil Select Off" "Auto Coil Select On" "Auto Coil Select No Spine" "Auto Coil Select Restricted" "Coil Memory Off" "Coil Memory On" "All Off" } "Auto Coil Select On"  }
        <ParamArray."CoilCompartments"> 
        {
          <Default> <ParamBool.""> 
          {
            <Visible> "true" 
            <Limit> { "true" "false" }
          }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          
        }
        <ParamBool."WorkingMan">  { "true"  }
        <ParamBool."WaitForUserToStart">  { }
        <ParamChoice."WaitForStartChoice">  { <Limit> { "Single measurement" "Repeated measurement" } "Single measurement"  }
        <ParamString."Description">  { }
        <ParamString."ProtocolName">  { "Initialized by sequence"  }
      }
    }
  }
}

<XProtocol> 
{
  <ID> 50 
  <Userversion> 4.5 
  
  <ParamMap.""> 
  {
    <ParamMap."Common"> 
    {
      
      <ParamBool."DisableVoiceCommands">  { }
      <ParamBool."IsRadialSliceSortingActive">  { }
      <ParamBool."ConfidenceRescaling">  { }
    }
    <ParamMap."ConflictSolving"> 
    {
      
      <ParamLong."ConflictSolvingMode">  { }
      <ParamDouble."MaxTr">  { }
      <ParamDouble."MinFlipAngle">  { }
    }
    <PipeService."EVA"> 
    {
      <Class> "PipeLinkService@MrParcPipe" 
      
      <ParamLong."POOLTHREADS">  { 1  }
      <ParamString."GROUP">  { "Calculation"  }
      <ParamLong."DATATHREADS">  { }
      <ParamLong."WATERMARK">  { }
      <ParamString."tdefaultEVAProt">  { "%SiemensEvaDefProt%/Inline/Inline.evp"  }
      <ParamFunctor."MotionCorr"> 
      {
        <Class> "MotionCorrDecorator@IceImagePostProcFunctors" 
        
        <ParamBool."EXECUTE">  { }
        <ParamString."image_type">  { "M"  }
        <ParamBool."save">  { }
        <Method."ComputeImage">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Event."ImageReady">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Connection."c1">  { "ImageReady" "" "ComputeImage"  }
      }
      <ParamFunctor."Subtraction"> 
      {
        <Class> "Subtraction@IceImagePostProcFunctors" 
        
        <ParamBool."EXECUTE">  { }
        <ParamString."image_type">  { "M"  }
        <ParamBool."save">  { "true"  }
        <ParamLong."subtrahend">  { 1  }
        <ParamString."string_indices">  { }
        <ParamBool."indices">  { "true"  }
        <ParamLong."subtraction_group">  { 1  }
        <ParamChoice."subtraction_mode">  { <Limit> { "SubtractionModeChoiceStandard" "SubtractionModeChoiceAbsolute" } "SubtractionModeChoiceStandard"  }
        <ParamBool."auto">  { }
        <ParamLong."fact">  { 1  }
        <ParamLong."offs">  { }
        <ParamString."BolusAgent">  { }
        <ParamBool."save_orig">  { "true"  }
        <Method."ComputeImage">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Event."ImageReady">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Connection."c1">  { "ImageReady" "" "ComputeImage"  }
      }
      <ParamFunctor."StdDevFactory"> 
      {
        <Class> "StdDevFactory@IceImagePostProcFunctors" 
        
        <ParamBool."EXECUTE">  { }
        <ParamString."image_type">  { "M"  }
        <ParamBool."sag">  { }
        <ParamBool."cor">  { }
        <ParamBool."tra">  { }
        <ParamBool."time">  { }
        <ParamBool."save_orig">  { "true"  }
        <ParamBool."stddev">  { }
        <Method."ComputeImage">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Event."ImageReady">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Connection."c1">  { "ImageReady" "" "ComputeImage"  }
      }
      <ParamFunctor."MIPFactory"> 
      {
        <Class> "MIPFactory@IceImagePostProcFunctors" 
        
        <ParamBool."EXECUTE">  { }
        <ParamString."image_type">  { "M"  }
        <ParamBool."sag">  { }
        <ParamBool."cor">  { }
        <ParamBool."tra">  { }
        <ParamBool."time">  { }
        <ParamBool."radial">  { }
        <ParamLong."no_radial_views">  { 1  }
        <ParamChoice."axis_radial_views">  { <Limit> { "L-R" "A-P" "H-F" } "L-R"  }
        <ParamBool."save_orig">  { "true"  }
        <Method."ComputeImage">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Event."ImageReady">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Connection."c1">  { "ImageReady" "" "ComputeImage"  }
      }
      <ParamFunctor."MPRFactory"> 
      {
        <Class> "MPRFactory" 
        
        <ParamBool."EXECUTE">  { }
        <ParamString."image_type">  { "M"  }
        <ParamBool."sag">  { }
        <ParamBool."cor">  { }
        <ParamBool."tra">  { }
        <ParamLong."no_slices">  { 1  }
        <ParamBool."save_orig">  { "true"  }
        <Method."ComputeImage">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Event."ImageReady">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Connection."c1">  { "ImageReady" "" "ComputeImage"  }
      }
      <ParamBool."save_orig">  { "true"  }
    }
  }
}

### ASCCONV BEGIN object=MrProtDataImpl@MrProtocolData version=66010002 converter=%MEASCONST%/ConverterList/Prot_Converter.txt ###
ulVersion	 = 	66010002
tSequenceFileName	 = 	"%CustomerSeq%\ns_tfl_rfmap"
tProtocolName	 = 	"Initialized by sequence"
tdefaultEVAProt	 = 	"%SiemensEvaDefProt%\Inline\Inline.evp"
lScanRegionPosTra	 = 	0.0
ucScanRegionPosValid	 = 	0x1
lPtabAbsStartPosZ	 = 	0
bPtabAbsStartPosZValid	 = 	0x0
lContrasts	 = 	1
lCombinedEchoes	 = 	1
ucDisableChangeStoreImages	 = 	0x1
ucAAMode	 = 	1
ucAARegionMode	 = 	1
ucAARefMode	 = 	1
ucReconstructionMode	 = 	1
ucOneSeriesForAllMeas	 = 	4
ucPHAPSMode	 = 	1
ulWrapUpMagn	 = 	1
lAverages	 = 	1
dAveragesDouble	 = 	1.0
lScanTimeSec	 = 	180
lTotalScanTimeSec	 = 	180
dRefSNR	 = 	279284.800875
dRefSNR_VOI	 = 	279284.800875
ulMotionCorr	 = 	1
ucCineMode	 = 	1
ucSequenceType	 = 	1
ucCoilCombineMode	 = 	1
ucFlipAngleMode	 = 	1
lTOM	 = 	1
ucReadOutMode	 = 	1
ucBold3dPace	 = 	1
ucTmapB0Correction	 = 	1
ucTmapEval	 = 	1
ucTmapImageType	 = 	1
ulOrganUnderExamination	 = 	1
dTissueT1	 = 	10.0
dTissueT2	 = 	5.0
lInvContrasts	 = 	1
ulReaquisitionMode	 = 	1
SequenceClass	 = 	5
lDummyScans	 = 	0
ucExternalTriggerSignal	 = 	0x0
lSilentPeriod	 = 	0
dOverallImageScaleFactor	 = 	0.4096
dOverallImageScaleCorrectionFactor	 = 	1.0
dAutoCoilSelectIlluRangeScale	 = 	0.699999988079
SarOptimization	 = 	0
CameraBasedMotionCorrection	 = 	0
ucBreastApplication	 = 	0x0
ucEddyCurrentComp	 = 	0x0
ucStaticFieldCorrection	 = 	0x0
ucDenoiseUniform	 = 	0x0
ucUnfilteredImagesForDenoiseUniform	 = 	0x0
lDenoiseWeight	 = 	40
sInversionContrastCombination	 = 	1
ucMotionCorSAMEROrig	 = 	0x1
sProtConsistencyInfo.flNominalB0	 = 	6.98093605042
sGRADSPEC.ucMode	 = 	1
sGRADSPEC.ucNoiseReduction	 = 	1
sGRADSPEC.asGPAData.__attribute__.size	 = 	1
sGRADSPEC.asGPAData[0].sEddyCompensationX.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sEddyCompensationX.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sEddyCompensationY.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sEddyCompensationY.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sEddyCompensationZ.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sEddyCompensationZ.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sB0CompensationX.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sB0CompensationX.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sB0CompensationY.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sB0CompensationY.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sB0CompensationZ.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sB0CompensationZ.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationXY.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationXY.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationXZ.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationXZ.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationYX.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationYX.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationYZ.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationYZ.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationZX.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationZX.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationZY.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationZY.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.alShimCurrent.__attribute__.size	 = 	15
sTXSPEC.lBCExcitationMode	 = 	0
sTXSPEC.lBCSeqExcitationMode	 = 	4
sTXSPEC.ucRFPulseType	 = 	2
sTXSPEC.ucExcitMode	 = 	1
sTXSPEC.ucSimultaneousExcitation	 = 	1
sTXSPEC.lB1ShimMode	 = 	1
sTXSPEC.asNucleusInfo.__attribute__.size	 = 	2
sTXSPEC.asNucleusInfo[0].tNucleus	 = 	"1H"
sTXSPEC.asNucleusInfo[0].lCoilSelectIndex	 = 	-1
sTXSPEC.asNucleusInfo[0].RFPulseExcitationMode	 = 	2
sTXSPEC.asNucleusInfo[0].CompProtectionValues.MaxOnlineTxAmpl.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[0].CompProtectionValues.WorstCaseMaxOnlineTxAmpl.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationAvg.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationPeak.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[0].CompProtectionValues.DecouplingMatrix.ComplexData.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.ZZMatrixVector.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.ScatterMatrix.ComplexData.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[0].aTxScaleFactorSlice.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[1].lCoilSelectIndex	 = 	-1
sTXSPEC.asNucleusInfo[1].CompProtectionValues.MaxOnlineTxAmpl.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[1].CompProtectionValues.WorstCaseMaxOnlineTxAmpl.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[1].CompProtectionValues.adGainVariationAvg.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[1].CompProtectionValues.adGainVariationPeak.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[1].CompProtectionValues.DecouplingMatrix.ComplexData.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[1].CompProtectionValues.ZZMatrixVector.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[1].CompProtectionValues.ScatterMatrix.ComplexData.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[1].aTxScaleFactorSlice.__attribute__.size	 = 	0
sTXSPEC.aRFPULSE.__attribute__.size	 = 	256
sTXSPEC.aTxScaleFactor.__attribute__.size	 = 	8
sTXSPEC.aPTXRFPulse.__attribute__.size	 = 	0
sTXSPEC.B1CorrectionParameters.bValid	 = 	0x0
sTXSPEC.B1CorrectionParameters.bActive	 = 	0x0
sTXSPEC.B1CorrectionParameters.flCorrectionFactorMax	 = 	1.0
sTXSPEC.B1CorrectionParameters.flPeakReserveFactor	 = 	0.0
sRXSPEC.lSeqGain	 = 	1
sRXSPEC.UseDoubleDataRate	 = 	0x0
sRXSPEC.bPilotToneSupportActive	 = 	0x0
sRXSPEC.asNucleusInfo.__attribute__.size	 = 	2
sRXSPEC.asNucleusInfo[0].tNucleus	 = 	"1H"
sRXSPEC.asNucleusInfo[0].lCoilSelectIndex	 = 	-1
sRXSPEC.asNucleusInfo[1].lCoilSelectIndex	 = 	-1
sRXSPEC.alVariCapVoltages.__attribute__.size	 = 	4
sRXSPEC.alDwellTime.__attribute__.size	 = 	256
sRXSPEC.alDwellTime[0]	 = 	7800
sRXSPEC.alDwellTime[1]	 = 	15900
sRXSPEC.alDwellTime[2]	 = 	15900
sRXSPEC.alDwellTime[3]	 = 	15900
sRXSPEC.alDwellTime[4]	 = 	15900
sRXSPEC.alDwellTime[5]	 = 	15900
sRXSPEC.alDwellTime[6]	 = 	15900
sRXSPEC.alDwellTime[7]	 = 	15900
sRXSPEC.alDwellTime[8]	 = 	15900
sRXSPEC.alDwellTime[9]	 = 	15900
sRXSPEC.alDwellTime[10]	 = 	15900
sRXSPEC.alDwellTime[11]	 = 	15900
sRXSPEC.alDwellTime[12]	 = 	15900
sRXSPEC.alDwellTime[13]	 = 	15900
sRXSPEC.alDwellTime[14]	 = 	15900
sRXSPEC.alDwellTime[15]	 = 	15900
sRXSPEC.alDwellTime[16]	 = 	15900
sRXSPEC.alDwellTime[17]	 = 	15900
sRXSPEC.alDwellTime[18]	 = 	15900
sRXSPEC.alDwellTime[19]	 = 	15900
sRXSPEC.alDwellTime[20]	 = 	15900
sRXSPEC.alDwellTime[21]	 = 	15900
sRXSPEC.alDwellTime[22]	 = 	15900
sRXSPEC.alDwellTime[23]	 = 	15900
sRXSPEC.alDwellTime[24]	 = 	15900
sRXSPEC.alDwellTime[25]	 = 	15900
sRXSPEC.alDwellTime[26]	 = 	15900
sRXSPEC.alDwellTime[27]	 = 	15900
sRXSPEC.alDwellTime[28]	 = 	15900
sRXSPEC.alDwellTime[29]	 = 	15900
sRXSPEC.alDwellTime[30]	 = 	15900
sRXSPEC.alDwellTime[31]	 = 	15900
sRXSPEC.asLocalShimData.__attribute__.size	 = 	8
sAdjData.uiAdjFreMode	 = 	1
sAdjData.uiAdjTraMode	 = 	1
sAdjData.uiAdjShimMode	 = 	512
sAdjData.uiAdjWatSupMode	 = 	1
sAdjData.uiAdjRFMapMode	 = 	1
sAdjData.uiAdjMDSMode	 = 	1
sAdjData.uiAdjTableTolerance	 = 	2
sAdjData.lCoupleAdjVolTo	 = 	1
sAdjData.uiAdjB0AcqMode	 = 	1
sAdjData.uiAdjB1AcqMode	 = 	1
sAdjData.uiAdjFreqConfirmSpec	 = 	1
sAdjData.uiAdjustmentMode	 = 	1
sAdjData.uiFastViewOptimization	 = 	1
sAdjData.uiAdjSliceBySliceTxRef	 = 	0x1
sAdjData.uiAdjSliceBySliceFrequency	 = 	0x1
sAdjData.uiAdjSliceBySliceFirstOrderShim	 = 	0x1
sAdjData.bAdjustWithBreathhold	 = 	0x0
sAdjData.uiLocalShim	 = 	0
sAdjData.uiLRBalancing	 = 	0
sAdjData.sAdjUIOverrides.iAdjUIFieldMapMode	 = 	-1
sAdjData.sAdjUIOverrides.iAdjUITraMode	 = 	-1
alTR.__attribute__.size	 = 	256
alTR[0]	 = 	10000000
alTI.__attribute__.size	 = 	256
alTI[0]	 = 	300000
alTI[1]	 = 	1000000
alTD.__attribute__.size	 = 	256
alTE.__attribute__.size	 = 	256
alTE[0]	 = 	1720
alTE[1]	 = 	10000
alTE[2]	 = 	15000
alTE[3]	 = 	20000
alTE[4]	 = 	25000
alTE[5]	 = 	30000
alTE[6]	 = 	35000
alTE[7]	 = 	40000
alTE[8]	 = 	45000
alTE[9]	 = 	50000
alTE[10]	 = 	55000
alTE[11]	 = 	60000
alTE[12]	 = 	65000
alTE[13]	 = 	70000
alTE[14]	 = 	75000
alTE[15]	 = 	80000
alTE[16]	 = 	85000
alTE[17]	 = 	90000
alTE[18]	 = 	95000
alTE[19]	 = 	100000
alTE[20]	 = 	105000
alTE[21]	 = 	110000
alTE[22]	 = 	115000
alTE[23]	 = 	120000
alTE[24]	 = 	125000
alTE[25]	 = 	130000
alTE[26]	 = 	135000
alTE[27]	 = 	140000
alTE[28]	 = 	145000
alTE[29]	 = 	150000
alTE[30]	 = 	155000
alTE[31]	 = 	160000
acFlowComp.__attribute__.size	 = 	256
acFlowComp[0]	 = 	1
sSliceArray.lSize	 = 	40
sSliceArray.lConc	 = 	1
sSliceArray.ucMode	 = 	4
sSliceArray.ucAnatomicalSliceMode	 = 	4
sSliceArray.ucConcatenationsSelectModeResp	 = 	1
sSliceArray.asSlice.__attribute__.size	 = 	256
sSliceArray.asSlice[0].dThickness	 = 	2.5
sSliceArray.asSlice[0].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[0].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[0].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[0].sPosition.dTra	 = 	-97.5
sSliceArray.asSlice[0].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[1].dThickness	 = 	2.5
sSliceArray.asSlice[1].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[1].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[1].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[1].sPosition.dTra	 = 	-92.5
sSliceArray.asSlice[1].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[2].dThickness	 = 	2.5
sSliceArray.asSlice[2].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[2].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[2].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[2].sPosition.dTra	 = 	-87.5
sSliceArray.asSlice[2].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[3].dThickness	 = 	2.5
sSliceArray.asSlice[3].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[3].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[3].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[3].sPosition.dTra	 = 	-82.5
sSliceArray.asSlice[3].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[4].dThickness	 = 	2.5
sSliceArray.asSlice[4].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[4].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[4].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[4].sPosition.dTra	 = 	-77.5
sSliceArray.asSlice[4].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[5].dThickness	 = 	2.5
sSliceArray.asSlice[5].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[5].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[5].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[5].sPosition.dTra	 = 	-72.5
sSliceArray.asSlice[5].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[6].dThickness	 = 	2.5
sSliceArray.asSlice[6].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[6].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[6].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[6].sPosition.dTra	 = 	-67.5
sSliceArray.asSlice[6].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[7].dThickness	 = 	2.5
sSliceArray.asSlice[7].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[7].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[7].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[7].sPosition.dTra	 = 	-62.5
sSliceArray.asSlice[7].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[8].dThickness	 = 	2.5
sSliceArray.asSlice[8].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[8].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[8].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[8].sPosition.dTra	 = 	-57.5
sSliceArray.asSlice[8].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[9].dThickness	 = 	2.5
sSliceArray.asSlice[9].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[9].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[9].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[9].sPosition.dTra	 = 	-52.5
sSliceArray.asSlice[9].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[10].dThickness	 = 	2.5
sSliceArray.asSlice[10].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[10].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[10].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[10].sPosition.dTra	 = 	-47.5
sSliceArray.asSlice[10].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[11].dThickness	 = 	2.5
sSliceArray.asSlice[11].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[11].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[11].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[11].sPosition.dTra	 = 	-42.5
sSliceArray.asSlice[11].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[12].dThickness	 = 	2.5
sSliceArray.asSlice[12].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[12].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[12].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[12].sPosition.dTra	 = 	-37.5
sSliceArray.asSlice[12].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[13].dThickness	 = 	2.5
sSliceArray.asSlice[13].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[13].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[13].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[13].sPosition.dTra	 = 	-32.5
sSliceArray.asSlice[13].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[14].dThickness	 = 	2.5
sSliceArray.asSlice[14].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[14].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[14].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[14].sPosition.dTra	 = 	-27.5
sSliceArray.asSlice[14].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[15].dThickness	 = 	2.5
sSliceArray.asSlice[15].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[15].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[15].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[15].sPosition.dTra	 = 	-22.5
sSliceArray.asSlice[15].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[16].dThickness	 = 	2.5
sSliceArray.asSlice[16].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[16].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[16].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[16].sPosition.dTra	 = 	-17.5
sSliceArray.asSlice[16].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[17].dThickness	 = 	2.5
sSliceArray.asSlice[17].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[17].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[17].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[17].sPosition.dTra	 = 	-12.5
sSliceArray.asSlice[17].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[18].dThickness	 = 	2.5
sSliceArray.asSlice[18].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[18].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[18].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[18].sPosition.dTra	 = 	-7.5
sSliceArray.asSlice[18].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[19].dThickness	 = 	2.5
sSliceArray.asSlice[19].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[19].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[19].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[19].sPosition.dTra	 = 	-2.5
sSliceArray.asSlice[19].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[20].dThickness	 = 	2.5
sSliceArray.asSlice[20].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[20].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[20].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[20].sPosition.dTra	 = 	2.5
sSliceArray.asSlice[20].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[21].dThickness	 = 	2.5
sSliceArray.asSlice[21].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[21].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[21].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[21].sPosition.dTra	 = 	7.5
sSliceArray.asSlice[21].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[22].dThickness	 = 	2.5
sSliceArray.asSlice[22].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[22].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[22].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[22].sPosition.dTra	 = 	12.5
sSliceArray.asSlice[22].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[23].dThickness	 = 	2.5
sSliceArray.asSlice[23].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[23].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[23].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[23].sPosition.dTra	 = 	17.5
sSliceArray.asSlice[23].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[24].dThickness	 = 	2.5
sSliceArray.asSlice[24].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[24].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[24].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[24].sPosition.dTra	 = 	22.5
sSliceArray.asSlice[24].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[25].dThickness	 = 	2.5
sSliceArray.asSlice[25].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[25].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[25].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[25].sPosition.dTra	 = 	27.5
sSliceArray.asSlice[25].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[26].dThickness	 = 	2.5
sSliceArray.asSlice[26].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[26].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[26].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[26].sPosition.dTra	 = 	32.5
sSliceArray.asSlice[26].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[27].dThickness	 = 	2.5
sSliceArray.asSlice[27].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[27].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[27].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[27].sPosition.dTra	 = 	37.5
sSliceArray.asSlice[27].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[28].dThickness	 = 	2.5
sSliceArray.asSlice[28].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[28].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[28].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[28].sPosition.dTra	 = 	42.5
sSliceArray.asSlice[28].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[29].dThickness	 = 	2.5
sSliceArray.asSlice[29].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[29].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[29].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[29].sPosition.dTra	 = 	47.5
sSliceArray.asSlice[29].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[30].dThickness	 = 	2.5
sSliceArray.asSlice[30].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[30].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[30].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[30].sPosition.dTra	 = 	52.5
sSliceArray.asSlice[30].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[31].dThickness	 = 	2.5
sSliceArray.asSlice[31].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[31].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[31].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[31].sPosition.dTra	 = 	57.5
sSliceArray.asSlice[31].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[32].dThickness	 = 	2.5
sSliceArray.asSlice[32].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[32].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[32].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[32].sPosition.dTra	 = 	62.5
sSliceArray.asSlice[32].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[33].dThickness	 = 	2.5
sSliceArray.asSlice[33].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[33].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[33].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[33].sPosition.dTra	 = 	67.5
sSliceArray.asSlice[33].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[34].dThickness	 = 	2.5
sSliceArray.asSlice[34].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[34].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[34].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[34].sPosition.dTra	 = 	72.5
sSliceArray.asSlice[34].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[35].dThickness	 = 	2.5
sSliceArray.asSlice[35].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[35].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[35].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[35].sPosition.dTra	 = 	77.5
sSliceArray.asSlice[35].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[36].dThickness	 = 	2.5
sSliceArray.asSlice[36].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[36].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[36].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[36].sPosition.dTra	 = 	82.5
sSliceArray.asSlice[36].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[37].dThickness	 = 	2.5
sSliceArray.asSlice[37].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[37].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[37].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[37].sPosition.dTra	 = 	87.5
sSliceArray.asSlice[37].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[38].dThickness	 = 	2.5
sSliceArray.asSlice[38].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[38].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[38].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[38].sPosition.dTra	 = 	92.5
sSliceArray.asSlice[38].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[39].dThickness	 = 	2.5
sSliceArray.asSlice[39].dPhaseFOV	 = 	200.0
sSliceArray.asSlice[39].dReadoutFOV	 = 	320.0
sSliceArray.asSlice[39].dInPlaneRot	 = 	1.57079632679
sSliceArray.asSlice[39].sPosition.dTra	 = 	97.5
sSliceArray.asSlice[39].sNormal.dTra	 = 	1.0
sSliceArray.alSliceAcqOrder.__attribute__.size	 = 	256
sSliceArray.alSliceAcqOrder[1]	 = 	1
sSliceArray.alSliceAcqOrder[2]	 = 	2
sSliceArray.alSliceAcqOrder[3]	 = 	3
sSliceArray.alSliceAcqOrder[4]	 = 	4
sSliceArray.alSliceAcqOrder[5]	 = 	5
sSliceArray.alSliceAcqOrder[6]	 = 	6
sSliceArray.alSliceAcqOrder[7]	 = 	7
sSliceArray.alSliceAcqOrder[8]	 = 	8
sSliceArray.alSliceAcqOrder[9]	 = 	9
sSliceArray.alSliceAcqOrder[10]	 = 	10
sSliceArray.alSliceAcqOrder[11]	 = 	11
sSliceArray.alSliceAcqOrder[12]	 = 	12
sSliceArray.alSliceAcqOrder[13]	 = 	13
sSliceArray.alSliceAcqOrder[14]	 = 	14
sSliceArray.alSliceAcqOrder[15]	 = 	15
sSliceArray.alSliceAcqOrder[16]	 = 	16
sSliceArray.alSliceAcqOrder[17]	 = 	17
sSliceArray.alSliceAcqOrder[18]	 = 	18
sSliceArray.alSliceAcqOrder[19]	 = 	19
sSliceArray.alSliceAcqOrder[20]	 = 	20
sSliceArray.alSliceAcqOrder[21]	 = 	21
sSliceArray.alSliceAcqOrder[22]	 = 	22
sSliceArray.alSliceAcqOrder[23]	 = 	23
sSliceArray.alSliceAcqOrder[24]	 = 	24
sSliceArray.alSliceAcqOrder[25]	 = 	25
sSliceArray.alSliceAcqOrder[26]	 = 	26
sSliceArray.alSliceAcqOrder[27]	 = 	27
sSliceArray.alSliceAcqOrder[28]	 = 	28
sSliceArray.alSliceAcqOrder[29]	 = 	29
sSliceArray.alSliceAcqOrder[30]	 = 	30
sSliceArray.alSliceAcqOrder[31]	 = 	31
sSliceArray.alSliceAcqOrder[32]	 = 	32
sSliceArray.alSliceAcqOrder[33]	 = 	33
sSliceArray.alSliceAcqOrder[34]	 = 	34
sSliceArray.alSliceAcqOrder[35]	 = 	35
sSliceArray.alSliceAcqOrder[36]	 = 	36
sSliceArray.alSliceAcqOrder[37]	 = 	37
sSliceArray.alSliceAcqOrder[38]	 = 	38
sSliceArray.alSliceAcqOrder[39]	 = 	39
sSliceArray.anAsc.__attribute__.size	 = 	256
sSliceArray.anAsc[1]	 = 	1
sSliceArray.anAsc[2]	 = 	2
sSliceArray.anAsc[3]	 = 	3
sSliceArray.anAsc[4]	 = 	4
sSliceArray.anAsc[5]	 = 	5
sSliceArray.anAsc[6]	 = 	6
sSliceArray.anAsc[7]	 = 	7
sSliceArray.anAsc[8]	 = 	8
sSliceArray.anAsc[9]	 = 	9
sSliceArray.anAsc[10]	 = 	10
sSliceArray.anAsc[11]	 = 	11
sSliceArray.anAsc[12]	 = 	12
sSliceArray.anAsc[13]	 = 	13
sSliceArray.anAsc[14]	 = 	14
sSliceArray.anAsc[15]	 = 	15
sSliceArray.anAsc[16]	 = 	16
sSliceArray.anAsc[17]	 = 	17
sSliceArray.anAsc[18]	 = 	18
sSliceArray.anAsc[19]	 = 	19
sSliceArray.anAsc[20]	 = 	20
sSliceArray.anAsc[21]	 = 	21
sSliceArray.anAsc[22]	 = 	22
sSliceArray.anAsc[23]	 = 	23
sSliceArray.anAsc[24]	 = 	24
sSliceArray.anAsc[25]	 = 	25
sSliceArray.anAsc[26]	 = 	26
sSliceArray.anAsc[27]	 = 	27
sSliceArray.anAsc[28]	 = 	28
sSliceArray.anAsc[29]	 = 	29
sSliceArray.anAsc[30]	 = 	30
sSliceArray.anAsc[31]	 = 	31
sSliceArray.anAsc[32]	 = 	32
sSliceArray.anAsc[33]	 = 	33
sSliceArray.anAsc[34]	 = 	34
sSliceArray.anAsc[35]	 = 	35
sSliceArray.anAsc[36]	 = 	36
sSliceArray.anAsc[37]	 = 	37
sSliceArray.anAsc[38]	 = 	38
sSliceArray.anAsc[39]	 = 	39
sSliceArray.anPos.__attribute__.size	 = 	256
sSliceArray.anPos[1]	 = 	1
sSliceArray.anPos[2]	 = 	2
sSliceArray.anPos[3]	 = 	3
sSliceArray.anPos[4]	 = 	4
sSliceArray.anPos[5]	 = 	5
sSliceArray.anPos[6]	 = 	6
sSliceArray.anPos[7]	 = 	7
sSliceArray.anPos[8]	 = 	8
sSliceArray.anPos[9]	 = 	9
sSliceArray.anPos[10]	 = 	10
sSliceArray.anPos[11]	 = 	11
sSliceArray.anPos[12]	 = 	12
sSliceArray.anPos[13]	 = 	13
sSliceArray.anPos[14]	 = 	14
sSliceArray.anPos[15]	 = 	15
sSliceArray.anPos[16]	 = 	16
sSliceArray.anPos[17]	 = 	17
sSliceArray.anPos[18]	 = 	18
sSliceArray.anPos[19]	 = 	19
sSliceArray.anPos[20]	 = 	20
sSliceArray.anPos[21]	 = 	21
sSliceArray.anPos[22]	 = 	22
sSliceArray.anPos[23]	 = 	23
sSliceArray.anPos[24]	 = 	24
sSliceArray.anPos[25]	 = 	25
sSliceArray.anPos[26]	 = 	26
sSliceArray.anPos[27]	 = 	27
sSliceArray.anPos[28]	 = 	28
sSliceArray.anPos[29]	 = 	29
sSliceArray.anPos[30]	 = 	30
sSliceArray.anPos[31]	 = 	31
sSliceArray.anPos[32]	 = 	32
sSliceArray.anPos[33]	 = 	33
sSliceArray.anPos[34]	 = 	34
sSliceArray.anPos[35]	 = 	35
sSliceArray.anPos[36]	 = 	36
sSliceArray.anPos[37]	 = 	37
sSliceArray.anPos[38]	 = 	38
sSliceArray.anPos[39]	 = 	39
sSliceArray.sTSat.dThickness	 = 	50.0
sSliceArray.sTSat.ulShape	 = 	1
sGroupArray.lSize	 = 	1
sGroupArray.asGroup.__attribute__.size	 = 	256
sGroupArray.asGroup[0].nSize	 = 	40
sGroupArray.asGroup[0].dDistFact	 = 	1.0
sGroupArray.anMember.__attribute__.size	 = 	258
sGroupArray.anMember[1]	 = 	1
sGroupArray.anMember[2]	 = 	2
sGroupArray.anMember[3]	 = 	3
sGroupArray.anMember[4]	 = 	4
sGroupArray.anMember[5]	 = 	5
sGroupArray.anMember[6]	 = 	6
sGroupArray.anMember[7]	 = 	7
sGroupArray.anMember[8]	 = 	8
sGroupArray.anMember[9]	 = 	9
sGroupArray.anMember[10]	 = 	10
sGroupArray.anMember[11]	 = 	11
sGroupArray.anMember[12]	 = 	12
sGroupArray.anMember[13]	 = 	13
sGroupArray.anMember[14]	 = 	14
sGroupArray.anMember[15]	 = 	15
sGroupArray.anMember[16]	 = 	16
sGroupArray.anMember[17]	 = 	17
sGroupArray.anMember[18]	 = 	18
sGroupArray.anMember[19]	 = 	19
sGroupArray.anMember[20]	 = 	20
sGroupArray.anMember[21]	 = 	21
sGroupArray.anMember[22]	 = 	22
sGroupArray.anMember[23]	 = 	23
sGroupArray.anMember[24]	 = 	24
sGroupArray.anMember[25]	 = 	25
sGroupArray.anMember[26]	 = 	26
sGroupArray.anMember[27]	 = 	27
sGroupArray.anMember[28]	 = 	28
sGroupArray.anMember[29]	 = 	29
sGroupArray.anMember[30]	 = 	30
sGroupArray.anMember[31]	 = 	31
sGroupArray.anMember[32]	 = 	32
sGroupArray.anMember[33]	 = 	33
sGroupArray.anMember[34]	 = 	34
sGroupArray.anMember[35]	 = 	35
sGroupArray.anMember[36]	 = 	36
sGroupArray.anMember[37]	 = 	37
sGroupArray.anMember[38]	 = 	38
sGroupArray.anMember[39]	 = 	39
sGroupArray.anMember[40]	 = 	-1
sGroupArray.sPSat.dThickness	 = 	50.0
sGroupArray.sPSat.ulShape	 = 	1
sRSatArray.asElm.__attribute__.size	 = 	8
sRSatArray.asElm[0].ulShape	 = 	1
sRSatArray.asElm[1].ulShape	 = 	1
sRSatArray.asElm[2].ulShape	 = 	1
sRSatArray.asElm[3].ulShape	 = 	1
sRSatArray.asElm[4].ulShape	 = 	1
sRSatArray.asElm[5].ulShape	 = 	1
sRSatArray.asElm[6].ulShape	 = 	1
sRSatArray.asElm[7].ulShape	 = 	1
sNavigatorArray.asElm.__attribute__.size	 = 	5
sAutoAlign.dAAMatrix.__attribute__.size	 = 	16
sAutoAlign.dAAMatrix[0]	 = 	1.0
sAutoAlign.dAAMatrix[5]	 = 	1.0
sAutoAlign.dAAMatrix[10]	 = 	1.0
sAutoAlign.dAAMatrix[15]	 = 	1.0
sNavigatorPara.lBreathHoldMeas	 = 	1
sNavigatorPara.lRespComp	 = 	4
sNavigatorPara.dMinimumTriggerLevel	 = 	20.0
sNavigatorPara.adTrackingFactor.__attribute__.size	 = 	2
sNavigatorPara.adAcceptWindow.__attribute__.size	 = 	2
sNavigatorPara.adAcceptPosition.__attribute__.size	 = 	2
sNavigatorPara.adSearchWindow.__attribute__.size	 = 	2
sNavigatorPara.alFree.__attribute__.size	 = 	36
sNavigatorPara.adFree.__attribute__.size	 = 	24
sNavigatorPara.tFree.__attribute__.size	 = 	128
sBladePara.dBladeCoverage	 = 	100.0
sBladePara.ulMotionCorr	 = 	2
sBladePara.alFree.__attribute__.size	 = 	16
sBladePara.adFree.__attribute__.size	 = 	8
sPrepPulses.ucInversion	 = 	4
sPrepPulses.ucSatRecovery	 = 	1
sPrepPulses.ucT2Prep	 = 	1
sPrepPulses.ucTIScout	 = 	1
sPrepPulses.lMTCMode	 = 	1
sPrepPulses.lFlowAttenuation	 = 	1
sPrepPulses.ucFatSatMode	 = 	2
sPrepPulses.dDarkBloodThickness	 = 	200.0
sPrepPulses.dDarkBloodFlipAngle	 = 	200.0
sPrepPulses.dIRPulseThicknessFactor	 = 	0.77
sPrepPulses.ucBloodSuppression	 = 	1
sPrepPulses.lPhaseCorrectionMode	 = 	1
sPrepPulses.ucIRScheme	 = 	1
sPrepPulses.lFatSupOpt	 = 	1
sPrepPulses.lFatWaterContrast	 = 	1
sPrepPulses.adT2PrepDuration.__attribute__.size	 = 	1
sPrepPulses.adT2PrepDuration[0]	 = 	40.0
sKSpace.dPhaseResolution	 = 	1.0
sKSpace.dSliceResolution	 = 	1.0
sKSpace.dAngioDynCentralRegionA	 = 	20.0
sKSpace.dAngioDynSamplingDensityB	 = 	25.0
sKSpace.dSeqPhasePartialFourierForSNR	 = 	1.0
sKSpace.lBaseResolution	 = 	64
sKSpace.lPhaseEncodingLines	 = 	40
sKSpace.lPartitions	 = 	16
sKSpace.lImagesPerSlab	 = 	16
sKSpace.lRadialViews	 = 	64
sKSpace.lRadialInterleavesPerImage	 = 	1
sKSpace.lLinesPerShot	 = 	1
sKSpace.unReordering	 = 	2
sKSpace.ucPhasePartialFourier	 = 	16
sKSpace.ucSlicePartialFourier	 = 	16
sKSpace.ucAveragingMode	 = 	2
sKSpace.ucMultiSliceMode	 = 	2
sKSpace.ucDimension	 = 	2
sKSpace.ucTrajectory	 = 	1
sKSpace.lNumberOfBins	 = 	0
sKSpace.ucAsymmetricEchoMode	 = 	1
sKSpace.ucPOCS	 = 	1
sKSpace.Reordering3D	 = 	1
sKSpace.ucReadoutPartialFourier	 = 	16
sKSpace.ucDynamicMode	 = 	1
sKSpace.ucUndersamplingPattern	 = 	1
sKSpace.lTrajectoryOptimization	 = 	0
sKSpace.DistributionAsymmetry	 = 	0
sKSpace.SpiralInterleaves	 = 	1
sKSpace.PhaseEncOrder	 = 	0
sFastImaging.lEPIFactor	 = 	1
sFastImaging.lTurboFactor	 = 	40
sFastImaging.lSliceTurboFactor	 = 	1
sFastImaging.lSegments	 = 	1
sFastImaging.ulEnableRFSpoiling	 = 	0x1
sFastImaging.ucPhaseEncRE	 = 	0x0
sFastImaging.ucSegmentationMode	 = 	1
sFastImaging.lShots	 = 	1
sFastImaging.lEchoTrainDuration	 = 	700
sPhysioImaging.lSignal1	 = 	1
sPhysioImaging.lMethod1	 = 	1
sPhysioImaging.lSignal2	 = 	1
sPhysioImaging.lMethod2	 = 	1
sPhysioImaging.lPhases	 = 	1
sPhysioImaging.lRetroGatedImages	 = 	16
sPhysioImaging.lDummyHeartbeats	 = 	0
sPhysioImaging.sPhysioECG.lTriggerPulses	 = 	1
sPhysioImaging.sPhysioECG.lTriggerWindow	 = 	5
sPhysioImaging.sPhysioECG.lArrhythmiaDetection	 = 	1
sPhysioImaging.sPhysioECG.lCardiacGateOnThreshold	 = 	100000
sPhysioImaging.sPhysioECG.lCardiacGateOffThreshold	 = 	700000
sPhysioImaging.sPhysioECG.lTriggerIntervals	 = 	1
sPhysioImaging.sPhysioECG.lAcquisitionPosition	 = 	1
sPhysioImaging.sPhysioPulse.lTriggerPulses	 = 	1
sPhysioImaging.sPhysioPulse.lTriggerWindow	 = 	5
sPhysioImaging.sPhysioPulse.lArrhythmiaDetection	 = 	1
sPhysioImaging.sPhysioPulse.lCardiacGateOnThreshold	 = 	100000
sPhysioImaging.sPhysioPulse.lCardiacGateOffThreshold	 = 	700000
sPhysioImaging.sPhysioPulse.lTriggerIntervals	 = 	1
sPhysioImaging.sPhysioPulse.lAcquisitionPosition	 = 	1
sPhysioImaging.sPhysioExt.lTriggerPulses	 = 	1
sPhysioImaging.sPhysioExt.lTriggerWindow	 = 	5
sPhysioImaging.sPhysioExt.lArrhythmiaDetection	 = 	1
sPhysioImaging.sPhysioExt.lCardiacGateOnThreshold	 = 	100000
sPhysioImaging.sPhysioExt.lCardiacGateOffThreshold	 = 	700000
sPhysioImaging.sPhysioExt.lTriggerIntervals	 = 	1
sPhysioImaging.sPhysioExt.lAcquisitionPosition	 = 	1
sPhysioImaging.sPhysioExt2.lTriggerIntervals	 = 	1
sPhysioImaging.sPhysioExt2.lAcquisitionPosition	 = 	1
sPhysioImaging.sPhysioBeatSensor.lTriggerPulses	 = 	1
sPhysioImaging.sPhysioBeatSensor.lTriggerWindow	 = 	5
sPhysioImaging.sPhysioBeatSensor.lArrhythmiaDetection	 = 	1
sPhysioImaging.sPhysioBeatSensor.lCardiacGateOnThreshold	 = 	100000
sPhysioImaging.sPhysioBeatSensor.lCardiacGateOffThreshold	 = 	700000
sPhysioImaging.sPhysioBeatSensor.lTriggerIntervals	 = 	1
sPhysioImaging.sPhysioBeatSensor.lAcquisitionPosition	 = 	1
sPhysioImaging.sPhysioResp.lRespGateThreshold	 = 	20
sPhysioImaging.sPhysioResp.lRespGatePhase	 = 	2
sPhysioImaging.sPhysioResp.dGatingRatio	 = 	0.3
sPhysioImaging.sPhysioResp.lAcqusitionWindowPercent	 = 	25
sPhysioImaging.sPhysioNative.ucMode	 = 	1
sPhysioImaging.sPhysioNative.ucFlowSenMode	 = 	1
sSpecPara.lPhaseCyclingType	 = 	1
sSpecPara.lPhaseEncodingType	 = 	1
sSpecPara.lRFExcitationBandwidth	 = 	1
sSpecPara.ucRemoveOversampling	 = 	0x1
sSpecPara.lAutoRefScanMode	 = 	1
sSpecPara.lAutoRefScanNo	 = 	1
sSpecPara.lDecouplingType	 = 	1
sSpecPara.lNOEType	 = 	1
sSpecPara.lExcitationType	 = 	1
sSpecPara.lSpecAppl	 = 	1
sSpecPara.lSpectralSuppression	 = 	1
sDiffusion.ulMode	 = 	1
sDiffusion.dsScheme	 = 	1
sDiffusion.ulQSpaceCoverage	 = 	1
sDiffusion.ulQSpaceSampling	 = 	1
sDiffusion.lQSpaceSteps	 = 	1
sDiffusion.alBValue.__attribute__.size	 = 	128
sDiffusion.alAverages.__attribute__.size	 = 	128
sDiffusion.sFreeDiffusionData.ulCoordinateSystem	 = 	1
sDiffusion.sFreeDiffusionData.ulNormalization	 = 	1
sDiffusion.sFreeDiffusionData.asDiffDirVector.__attribute__.size	 = 	0
sAngio.ucPCFlowMode	 = 	2
sAngio.ucTOFInflow	 = 	4
sAngio.lDynamicReconMode	 = 	1
sAngio.lTemporalInterpolation	 = 	1
sAngio.sFlowArray.asElm.__attribute__.size	 = 	16
sPreScanNormalizeFilter.ucMode	 = 	2
sDistortionCorrFilter.ucMode	 = 	2
sNoiseDecorrData.lNoiseDecorrDefaultMode	 = 	4
sPat.lAccelFactPE	 = 	1
sPat.lAccelFact3D	 = 	1
sPat.ucPATMode	 = 	1
sPat.ucRefScanMode	 = 	1
sPat.ulCaipirinhaMode	 = 	1
sPat.lAccelFactPeriph	 = 	16
sPat.lAccelFactCenter	 = 	3
sPat.dTotalAccelFact	 = 	1.0
sMds.ulMdsModeMask	 = 	1
sMds.lTableSpeedNumerator	 = 	1
sMds.lmdsLinesPerSegment	 = 	15
sMds.lMdsPtabAbsStartPosZ	 = 	0
sMds.bMdsPtabAbsStartPosZValid	 = 	0x0
sMds.lMdsPtabAbsEndPosZ	 = 	0
sMds.bMdsPtabAbsEndPosZValid	 = 	0x0
sMds.lMdsPtabAbsStartPosZOriginal	 = 	0
sMds.lMdsPtabAbsEndPosZOriginal	 = 	0
sMds.dMdsRangeExtension	 = 	600.0
sMds.lSweeps	 = 	1
sMds.ucSweepMode	 = 	1
sMds.dDCSIlluminationScale	 = 	2.0
sMds.ucExcitDir	 = 	1
sMds.ucFreqShimPerSlice	 = 	0x1
sMds.ucSliceFollowing	 = 	0x1
sMds.ucDynamicCoilSwitching	 = 	0x1
sMds.ucPhaseNav	 = 	0x0
sMds.asMdsMotionInterval.__attribute__.size	 = 	8
sMds.alFree.__attribute__.size	 = 	8
sMds.adFree.__attribute__.size	 = 	8
sMds.sMdsEndPosSBCS_mm.dTra	 = 	600.0
sMds.sMdsPreScanNormalize.ucMode	 = 	2
sMds.sMdsPreScanNormalize.ucStackMode	 = 	4
sMds.sMdsPreScanNormalize.lNPELin	 = 	18
sAAInitialOffset.Laterality	 = 	0
sAAInitialOffset.SliceInformation.dInPlaneRot	 = 	1.57079632679
sAAInitialOffset.SliceInformation.sNormal.dTra	 = 	1.0
alRepetitionsDelayTimeMs.__attribute__.size	 = 	64
adFlipAngleDegree.__attribute__.size	 = 	32
adFlipAngleDegree[0]	 = 	6.0
adFlipAngleDegree[1]	 = 	8.0
aulServicePara.__attribute__.size	 = 	5
uiPerProxy2Skip.__attribute__.size	 = 	2
sCoilSelectMeas.sCoilContext	 = 	"InvalidContext"
sCoilSelectMeas.aRxCoilSelectData.__attribute__.size	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[0].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[1].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[1].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[1].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[1].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aTxCoilSelectData.__attribute__.size	 = 	2
sCoilSelectMeas.aTxCoilSelectData[0].asList.__attribute__.size	 = 	32
sCoilSelectMeas.aTxCoilSelectData[1].asList.__attribute__.size	 = 	32
sCoilSelectMeas.aLocalShimCoilSelectData.__attribute__.size	 = 	1
sCoilSelectMeas.aLocalShimCoilSelectData[0].asList.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug.__attribute__.size	 = 	11
sCoilSelectMeas.CoilPlugs.Plug[0].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[1].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[2].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[3].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[4].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[5].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[6].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[7].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[8].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[9].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[10].IdPart.__attribute__.size	 = 	8
sWipMemBlock.alFree.__attribute__.size	 = 	64
sWipMemBlock.alFree[3]	 = 	10
sWipMemBlock.alFree[9]	 = 	80
sWipMemBlock.alFree[11]	 = 	1
sWipMemBlock.alFree[63]	 = 	12345
sWipMemBlock.adFree.__attribute__.size	 = 	16
sWipMemBlock.adFree[5]	 = 	0.000300000014249
sWipMemBlock.adFree[10]	 = 	9.0
sWipMemBlock.adRes.__attribute__.size	 = 	3
ucBOLDParadigmArray.__attribute__.size	 = 	256
sParametricMapping.ucParametricMap	 = 	1
sParametricMapping.SimulatedTEArray.__attribute__.size	 = 	20
sIR.alMagicID.__attribute__.size	 = 	2
sIR.alFree.__attribute__.size	 = 	16
sIR.adFree.__attribute__.size	 = 	16
sAsl.ulMode	 = 	1
sAsl.ulSuppressionMode	 = 	1
sAsl.sPostLabelingDelay.__attribute__.size	 = 	64
sInversionArray.asElm.__attribute__.size	 = 	4
sWorkflow.eConflictSolverStrategy	 = 	1
sWorkflow.ucDotVoiceSettingsOverride	 = 	0x1
sWorkflow.ucDotPauseSettingsOverride	 = 	0x1
sWorkflow.alConflictSolverData.__attribute__.size	 = 	0
sWorkflow.adConflictSolverData.__attribute__.size	 = 	0
sDynDistCorrFilter.ucMode	 = 	1
sChannelMatrix.ucChannelMixingMode	 = 	1
sChannelMatrix.ucChannelDiscardMode	 = 	1
sPTXData.uiPTXTargetMagMode	 = 	1
sPTXData.sPTXMPRSliceArray.asSlice.__attribute__.size	 = 	256
sPTXData.sPTXMPRSliceArray.alSliceAcqOrder.__attribute__.size	 = 	256
sPTXData.sPTXMPRSliceArray.anAsc.__attribute__.size	 = 	256
sPTXData.sPTXMPRSliceArray.anPos.__attribute__.size	 = 	256
sPTXData.sPTXMPRSliceArray.sTSat.ulShape	 = 	1
sPTXData.sPTXMPRGroupArray.asGroup.__attribute__.size	 = 	256
sPTXData.sPTXMPRGroupArray.anMember.__attribute__.size	 = 	258
sPTXData.sPTXMPRGroupArray.sPSat.ulShape	 = 	1
sPTXData.asPTXVolume.__attribute__.size	 = 	0
sInlineCardioEval.lInlineEvaMode	 = 	1
sInlineCardioEval.lNoOfPreps	 = 	1
sInlineCardioEval.alRecoveryDuration.__attribute__.size	 = 	1
sInlineCardioEval.alRecoveryDuration[0]	 = 	1
sInlineCardioEval.alSamplingDuration.__attribute__.size	 = 	1
sInlineCardioEval.alSamplingDuration[0]	 = 	1
sInteractive.ucTracking	 = 	0x0
sInteractive.ucSliceFollowing	 = 	1
sInteractive.ucSliceFollowingMode	 = 	1
sInteractive.lTrackingBackgroundSuppr	 = 	5
sInteractive.lTrackingSensitivity	 = 	1
sInteractive.lTrackingFlipAngle	 = 	10
sInteractive.ucPause	 = 	0x0
sInteractive.ucMosaic	 = 	0x0
sInteractive.ucSkipPhysioTrigger	 = 	0x0
sInteractive.lDephasingGradients	 = 	0
sInteractive.ucTrackingOnly	 = 	0x0
sInteractive.lTrackingDeviceIndex	 = 	0
sInteractive.alDephasingGradientAngle.__attribute__.size	 = 	32
sDixonData.ucDixonEvaluation	 = 	0x0
sDixonData.sMrDixonOptions.ucDixonFat	 = 	0x0
sDixonData.sMrDixonOptions.ucDixonWater	 = 	0x0
sDixonData.sMrDixonOptions.ucDixonInPhase	 = 	0x0
sDixonData.sMrDixonOptions.ucDixonOpposedPhase	 = 	0x0
sDixonData.sMrDixonOptions.ucDixonOriginalEchoes	 = 	0x1
sDixonData.sMrDixonEvaluationOptions.ucDixonEvaWaterFraction	 = 	0x0
sDixonData.sMrDixonEvaluationOptions.ucDixonEvaFatFraction	 = 	0x0
sDixonData.sMrDixonEvaluationOptions.ucDixonEvaT2Star	 = 	0x0
sDixonData.sMrDixonEvaluationOptions.ucDixonEvaR2Star	 = 	0x0
sDixonData.sMrDixonEvaluationOptions.ucDixonEvaReport	 = 	0x0
asDynamicAdjustVolumes.__attribute__.size	 = 	0
sCommonIterRecon.lIterations	 = 	15
sCommonIterRecon.eReconMethod	 = 	2
sCommonIterRecon.dRegularization	 = 	0.000199999994948
sCommonIterRecon.eDenoisingMode	 = 	1
sCommonIterRecon.lDenoisingStrength	 = 	50
sCommonIterRecon.dScalingFactor	 = 	0.0
sCommonIterRecon.dTemporalScaleFactor	 = 	5.0
sCommonIterRecon.dThresholdWavelet	 = 	0.00700000021607
sCommonIterRecon.dTolerance	 = 	9.99999974738e-06
sCommonIterRecon.sGRASPData.lNumPhases	 = 	2
sCommonIterRecon.sGRASPData.ucPreview	 = 	0x0
sCommonIterRecon.sGRASPData.ucLiverAutoBolusDetection	 = 	0x0
sCommonIterRecon.sGRASPData.eWorkflow	 = 	1
sCommonIterRecon.sGRASPData.ucLiverGating	 = 	0x0
sCommonIterRecon.sGRASPData.eRedNumberReconVolumes	 = 	1
sCommonIterRecon.sGRASPData.dBolusDelay	 = 	5.0
sCommonIterRecon.sGRASPData.adDuration.__attribute__.size	 = 	2
sCommonIterRecon.sGRASPData.adDuration[0]	 = 	1.0
sCommonIterRecon.sGRASPData.adDuration[1]	 = 	1.0
sCommonIterRecon.sGRASPData.adTemporalResolution.__attribute__.size	 = 	2
sCommonIterRecon.sGRASPData.alReconstructedVolumes.__attribute__.size	 = 	2
sCommonIterRecon.sGRASPData.alReconstructedVolumes[0]	 = 	1
sCommonIterRecon.sGRASPData.alReconstructedVolumes[1]	 = 	1
sSliceAcceleration.lMultiBandFactor	 = 	1
sSliceAcceleration.lFOVShiftFactor	 = 	1
MrFingerprinting.MrfMode	 = 	1
MrFingerprinting.MrfUserMode	 = 	0
MrFingerprinting.MrfDictUUID.__attribute__.size	 = 	16
MrAdvancedReconstruction.lAdvancedReconstructionMode	 = 	1
MrAdvancedReconstruction.lDenoisingMethod	 = 	0
MrAdvancedReconstruction.sDeepResolveGain.lDenoisingStrength	 = 	3
MrAdvancedReconstruction.sDeepResolveGain.lEdgeEnhancementStrength	 = 	3
MrAdvancedReconstruction.sDeepResolveGain.ucEdgeEnhancementOn	 = 	0x1
MrAdvancedReconstruction.sDeepResolveBoost.lDenoisingStrength	 = 	2
### ASCCONV END ###
