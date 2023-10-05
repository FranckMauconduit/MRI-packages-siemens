<XProtocol> 
{
  <Name> "MultiStep Controller" 
  <ID> 1000001 
  <Userversion> 666.0 
  
  <EVAStringTable> 
  {
    60 
    400 "Multistep Protocol" 
    401 "Step" 
    402 "Inline Composing" 
    403 "Composing Group" 
    404 "Last Step" 
    405 "Composing Function" 
    406 "Inline Combine" 
    407 "Enables you to set up a Multistep Protocol." 
    408 "Indicates the number of the current Step of the Multistep Protocol.\nPress the + button to add a Step at the end of the list.\nPress the - button to delete the current Step." 
    409 "Invokes Inline Composing." 
    410 "Identifies all Steps that will be composed." 
    411 "Defines the last measurement step of a composing function." 
    412 "Save all measurements of the Multistep Protocol into one series." 
    413 "Defines the composing algorithm to be used." 
    414 "Prio recon" 
    415 "Enables Prio Recon measurement" 
    416 "Auto Align Spine" 
    417 "Enables the Auto Align Spine mode in GSP when protocol is open" 
    422 "Coil Select Mode" 
    423 "If set to ""Default"",\nglobal settings from the queue menu will be used.\nIf set to ""All Off"",\nboth ""Auto Coil Select"" and ""Coil Memory"" are deactivated." 
    424 "Auto Coil Select On" 
    425 "Auto Coil Select Off" 
    426 "Default" 
    429 "Wait for user to start" 
    430 "Load images to graphic segments" 
    431 "Before measurement" 
    432 "After measurement" 
    433 "1st segment" 
    434 "2nd segment" 
    435 "3rd segment" 
    436 "All segments" 
    445 "Angio" 
    446 "Spine" 
    447 "Adaptive" 
    525 "SD???" 
    526 "SD" 
    538 "Normalize" 
    539 "Homogenize composed data to avoid unwanted local enhancements." 
    540 "Off" 
    541 "Weak" 
    542 "Medium" 
    543 "Strong" 
    545 "Diffusion" 
    546 "Coil Memory On" 
    547 "Coil Memory Off" 
    548 "All Off" 
    616 "Disable auto transfer to RIS" 
    617 "Single measurement" 
    618 "Repeated measurement" 
    620 "Auto open inline display" 
    621 "Auto close inline display" 
    622 "Load images to viewer" 
    623 "Auto store images" 
    624 "Generate inline position display" 
    625 "All orientations" 
    626 "Load images to stamp segments" 
    627 "Inline movie" 
    628 "Sag" 
    629 "Cor" 
    630 "Tra" 
  }
  
  <ParamMap.""> 
  {
    
    <ParamLong."LoadHook"> 
    {
    }
    
    <ParamBool."AlwaysFalse"> 
    {
      <LimitRange> { "false" "true" }
    }
    
    <ParamMap."DMWL"> 
    {
      
      <ParamMap."Pause"> 
      {
        
        <ParamString."CodeValue"> 
        {
        }
        
        <ParamString."CodingSchemeVersion"> 
        {
        }
        
        <ParamString."CodingSchemeDesignator"> 
        {
        }
        
        <ParamString."CodeMeaning"> 
        {
        }
      }
      
      <ParamMap."Meas"> 
      {
        
        <ParamString."CodeValue"> 
        {
        }
        
        <ParamString."CodingSchemeVersion"> 
        {
        }
        
        <ParamString."CodingSchemeDesignator"> 
        {
        }
        
        <ParamString."CodeMeaning"> 
        {
        }
      }
    }
    
    <ParamMap."MultiStep"> 
    {
      
      <ParamBool."IsMultiStepReadOnly"> 
      {
        <LimitRange> { "false" "true" }
      }
      
      <ParamBool."IsMultistep"> 
      {
        <Label> "Multistep Protocol" 
        <Tooltip> "Enables you to set up a Multistep Protocol." 
        <Visible> "true" 
        <LimitRange> { "false" "true" }
      }
      
      <ParamArray."SubStep"> 
      {
        <Label> "Step" 
        <Tooltip> "Indicates the number of the current Step of the Multistep Protocol.\nPress the + button to add a Step at the end of the list.\nPress the - button to delete the current Step." 
        <Visible> "true" 
        <Default> <ParamLong.""> 
        {
          <Label> "x" 
          <Visible> "true" 
        }
        { }
        
      }
      
      <ParamBool."IsInlineCompose"> 
      {
        <Label> "Inline Composing" 
        <Tooltip> "Invokes Inline Composing." 
        <Visible> "true" 
        <LimitRange> { "false" "true" }
      }
      
      <ParamBool."ComposingGroupSwitch"> 
      {
        <LimitRange> { "false" "true" }
      }
      
      <ParamLong."ComposingGroup"> 
      {
        <Label> "Composing Group" 
        <Tooltip> "Identifies all Steps that will be composed." 
        <Visible> "true" 
        <Default> 1 
        <LimitRange> { 1 100 }
      }
      
      <ParamBool."IsLastStep"> 
      {
        <Label> "Last Step" 
        <Tooltip> "Defines the last measurement step of a composing function." 
        <Visible> "true" 
        <LimitRange> { "false" "true" }
      }
      
      <ParamChoice."ComposingFunction"> 
      {
        <Label> "Composing Function" 
        <Tooltip> "Defines the composing algorithm to be used." 
        <Visible> "true" 
        <Default> "Angio" 
        <Limit> { "Angio" "Spine" "Adaptive" "Diffusion" }
      }
      
      <ParamChoice."ComposingNormalize"> 
      {
        <Label> "Normalize" 
        <Tooltip> "Homogenize composed data to avoid unwanted local enhancements." 
        <Visible> "true" 
        <Default> "Off" 
        <Limit> { "Off" "Weak" "Medium" "Strong" }
      }
      
      <ParamBool."IsInlineCombine"> 
      {
        <Label> "Inline Combine" 
        <Tooltip> "Save all measurements of the Multistep Protocol into one series." 
        <Visible> "true" 
        <LimitRange> { "false" "true" }
      }
      
      <ParamString."SeriesDescription"> 
      {
        <Label> "SD" 
        <Tooltip> "SD???" 
        <Visible> "true" 
      }
      
      <ParamLong."2DDistCor"> 
      {
      }
      
      <ParamLong."DynDistCor"> 
      {
      }
      
      <ParamLong."TpPosMode"> 
      {
      }
    }
    
    <ParamMap."Properties"> 
    {
      
      <ParamMap."Reconstruction"> 
      {
        
        <ParamBool."recon_prio"> 
        {
          <Label> "Prio recon" 
          <Tooltip> "Enables Prio Recon measurement" 
          <Visible> "true" 
          <LimitRange> { "false" "true" }
        }
      }
      
      <ParamMap."Sound"> 
      {
        
        <ParamString."PreSound"> 
        {
          <Label> "Before measurement" 
          <MinSize> 1 
          <MaxSize> 1000000000 
        }
        
        <ParamBool."PreSoundOn"> 
        {
          <Label> "Before measurement" 
          <MinSize> 1 
          <MaxSize> 1000000000 
          <LimitRange> { "false" "true" }
        }
        
        <ParamString."PostSound"> 
        {
          <Label> "After measurement" 
          <MinSize> 1 
          <MaxSize> 1000000000 
        }
        
        <ParamBool."PostSoundOn"> 
        {
          <Label> "After measurement" 
          <MinSize> 1 
          <MaxSize> 1000000000 
          <LimitRange> { "false" "true" }
        }
      }
      
      <ParamMap."AutoLoad"> 
      {
        
        <ParamBool."DisableAutoTransfer"> 
        {
          <Label> "Disable auto transfer to RIS" 
          <LimitRange> { "false" "true" }
        }
        
        <ParamBool."AutoStore"> 
        {
          <Label> "Auto store images" 
          <Visible> "true" 
          <Default> "true" 
          <LimitRange> { "false" "true" }
        }
        
        <ParamBool."LoadToFilming"> 
        {
          <Label> "Load to filming" 
          <Visible> "true" 
          <Default> "true" 
          <LimitRange> { "false" "true" }
        }
        
        <ParamBool."LoadToViewer"> 
        {
          <Label> "Load images to viewer" 
          <Visible> "true" 
          <Default> "true" 
          <LimitRange> { "false" "true" }
        }
        
        <ParamBool."LoadToStamp"> 
        {
          <Label> "Load images to stamp segments" 
          <Visible> "true" 
          <LimitRange> { "false" "true" }
        }
        
        <ParamBool."LoadToGraphic"> 
        {
          <Label> "Load images to graphic segments" 
          <Visible> "true" 
          <MinSize> 1 
          <MaxSize> 1000000000 
          <LimitRange> { "false" "true" }
        }
        
        <ParamChoice."GraphicSegmentChoice"> 
        {
          <Label> "Graphic segment" 
          <Visible> "true" 
          <Default> "Default" 
          <MinSize> 1 
          <MaxSize> 1000000000 
          <Limit> { "Default" "1st segment" "2nd segment" "3rd segment" "All segments" }
        }
        
        <ParamBool."InlineMovie"> 
        {
          <Label> "Inline movie" 
          <Visible> "true" 
          <LimitRange> { "false" "true" }
        }
        
        <ParamBool."AutoOpenInlineDisplay"> 
        {
          <Label> "Auto open inline display" 
          <Visible> "true" 
          <LimitRange> { "false" "true" }
        }
        
        <ParamBool."AutoCloseInlineDisplay"> 
        {
          <Label> "Auto close inline display" 
          <Visible> "true" 
          <LimitRange> { "false" "true" }
        }
        
        <ParamBool."InlinePositionDisplay"> 
        {
          <Label> "Generate inline position display" 
          <Visible> "true" 
          <LimitRange> { "false" "true" }
        }
        
        <ParamChoice."InlinePositionDisplayOrientation"> 
        {
          <Default> "All orientations" 
          <Limit> { "All orientations" "Sag" "Cor" "Tra" }
        }
      }
      
      <ParamMap."SlicePositioning"> 
      {
        
        <ParamBool."AutoAlignSpine"> 
        {
          <Label> "Auto Align Spine" 
          <Tooltip> "Enables the Auto Align Spine mode in GSP when protocol is open" 
          <Visible> "true" 
          <LimitRange> { "false" "true" }
        }
      }
      
      <ParamMap."Queue"> 
      {
        
        <ParamChoice."CoilSelectMode"> 
        {
          <Label> "Coil Select Mode" 
          <Tooltip> "If set to ""Default"",\nglobal settings from the queue menu will be used.\nIf set to ""All Off"",\nboth ""Auto Coil Select"" and ""Coil Memory"" are deactivated." 
          <Visible> "true" 
          <Default> "Default" 
          <Limit> { "Default" "Auto Coil Select Off" "Auto Coil Select On" "Coil Memory Off" "Coil Memory On" "All Off" }
        }
        
        <ParamBool."WorkingMan"> 
        {
          <Label> "Start measurement without further preparation" 
          <Visible> "true" 
          <Default> "true" 
          <LimitRange> { "false" "true" }
        }
        
        <ParamBool."WaitForUserToStart"> 
        {
          <Label> "Wait for user to start" 
          <Visible> "true" 
          <MinSize> 1 
          <MaxSize> 1000000000 
          <LimitRange> { "false" "true" }
        }
        
        <ParamChoice."WaitForStartChoice"> 
        {
          <Label> "Start measurements" 
          <Visible> "true" 
          <Default> "Single measurement" 
          <Limit> { "Single measurement" "Repeated measurement" }
        }
        
        <ParamString."Description"> 
        {
          <Label> "Description" 
          <Visible> "true" 
        }
        
        <ParamString."ProtocolName"> 
        {
          <Label> "Protocol name" 
          <Visible> "true" 
          <Default> "Initialized by sequence" 
        }
      }
      
      <ParamMap."CopyRefOpt"> 
      {
        
        <ParamBool."CopyPhaseEncDir"> 
        {
          <Label> "CopyPhaseEncDir" 
          <LimitRange> { "false" "true" }
        }
        
        <ParamBool."IgnoreMeasurements"> 
        {
          <Label> "IgnoreMeasurements" 
          <LimitRange> { "false" "true" }
        }
        
        <ParamBool."IgnoreLastStep"> 
        {
          <Label> "IgnoreLastStep" 
          <LimitRange> { "false" "true" }
        }
        
        <ParamBool."CopySubSteps"> 
        {
          <Label> "CopySubSteps" 
          <LimitRange> { "false" "true" }
        }
      }
    }
    
    <ParamMap."PerformanceCache"> 
    {
      
      <ParamLong."recon_prio_can_set"> 
      {
        <Default> -1 
        1 
      }
    }
  }
  
  <ParamCardLayout."Multistep"> 
  {
    <Repr> "LAYOUT_10X2_WIDE_CONTROLS" 
    <Control>  { <Param> "MultiStep.IsMultistep" <Pos> 110 3 <Repr> "UI_CHECKBOX" }
    <Control>  { <Param> "MultiStep.SubStep" <Pos> 77 18 }
    <Control>  { <Param> "MultiStep.IsInlineCompose" <Pos> 110 48 <Repr> "UI_CHECKBOX" }
    <Control>  { <Param> "MultiStep.ComposingNormalize" <Pos> 77 63 }
    <Control>  { <Param> "MultiStep.ComposingFunction" <Pos> 77 78 }
    <Control>  { <Param> "MultiStep.ComposingGroup" <Pos> 77 93 }
    <Control>  { <Param> "MultiStep.IsLastStep" <Pos> 110 93 <Repr> "UI_CHECKBOX" }
    <Control>  { <Param> "MultiStep.IsInlineCombine" <Pos> 110 108 <Repr> "UI_CHECKBOX" }
    <Line>  { 126 3 126 33 }
    <Line>  { 126 48 126 140 }
    <Line>  { 276 48 276 140 }
  }
  <ParamCardLayout."Inline Compose"> 
  {
    <Repr> "LAYOUT_10X2_WIDE_CONTROLS" 
    <Control>  { <Param> "MultiStep.IsInlineCompose" <Pos> 110 48 <Repr> "UI_CHECKBOX" }
    <Control>  { <Param> "MultiStep.ComposingNormalize" <Pos> 77 63 }
    <Control>  { <Param> "MultiStep.ComposingFunction" <Pos> 77 78 }
    <Control>  { <Param> "MultiStep.ComposingGroup" <Pos> 77 93 }
    <Control>  { <Param> "MultiStep.IsLastStep" <Pos> 110 93 <Repr> "UI_CHECKBOX" }
    <Line>  { 126 48 126 140 }
    <Line>  { 276 48 276 140 }
  }
  
  <Dependency."Value_FALSE"> {"AlwaysFalse" }
  <Dependency."1_Availability"> {"MultiStep.IsMultistep" "MultiStep.SubStep" "MultiStep.IsInlineCombine" <Context> "ONLINE" }
  <Dependency."1_Availability"> {"MultiStep.IsInlineCompose" "MultiStep.ComposingFunction" "MultiStep.ComposingGroup" "MultiStep.IsLastStep" "MultiStep.ComposingNormalize" "MultiStep.SeriesDescription" <Context> "ONLINE" }
  <Dependency."1_NOT_Availability"> {"MultiStep.IsMultistep" "MultiStep.ComposingGroup" "MultiStep.IsLastStep" <Context> "ONLINE" }
  <Dependency."1_NOT_Availability"> {"MultiStep.IsInlineCombine" "MultiStep.IsInlineCompose" <Context> "ONLINE" }
  <Dependency."1_NOT_Availability"> {"MultiStep.IsInlineCompose" "MultiStep.IsInlineCombine" <Context> "ONLINE" }
  <Dependency."MrMS_DH_Multistep"> {"MultiStep.IsMultistep" "MultiStep.IsInlineCompose" "MultiStep.IsInlineCombine" "MultiStep.SubStep" "MultiStep.ComposingGroup" "MultiStep.IsLastStep" "MultiStep.ComposingFunction" "MultiStep.ComposingNormalize" "MultiStep.IsMultiStepReadOnly" <Dll> "MrMultiStepDependencies" <Context> "ONLINE" }
  <Dependency."MrMS_DH_2DDistCor"> {"MultiStep.2DDistCor" "MultiStep.IsInlineCompose" "MultiStep.IsInlineCombine" <Dll> "MrMultiStepDependencies" <Context> "ONLINE" }
  <Dependency."MrMS_DH_DynDistCor"> {"MultiStep.DynDistCor" <Dll> "MrMultiStepDependencies" <Context> "ONLINE" }
  <Dependency."MrMS_DH_InlineCompose"> {"MultiStep.IsInlineCompose" "MultiStep.ComposingFunction" "MultiStep.ComposingGroup" "MultiStep.IsLastStep" "MultiStep.ComposingNormalize" "MultiStep.ComposingGroupSwitch" <Dll> "MrMultiStepDependencies" <Context> "ONLINE" }
  <Dependency."MrMS_DH_InlineCombine"> {"MultiStep.IsInlineCombine" <Dll> "MrMultiStepDependencies" <Context> "ONLINE" }
  <Dependency."MrMS_DH_ComposingGroup"> {"MultiStep.ComposingGroup" "MultiStep.SubStep" <Dll> "MrMultiStepDependencies" <Context> "ONLINE" }
  <Dependency."MrMS_DH_LastStep"> {"MultiStep.IsLastStep" "MultiStep.IsMultistep" "MultiStep.IsInlineCompose" <Dll> "MrMultiStepDependencies" <Context> "ONLINE" }
  <Dependency."MrMS_DH_SubSteps"> {"MultiStep.SubStep" "Properties.Queue.WaitForUserToStart" "MultiStep.IsMultistep" "MultiStep.IsInlineCompose" "Properties.Queue.ProtocolName" "Properties.AutoLoad.LoadToFilming" "Properties.AutoLoad.LoadToViewer" "MultiStep.IsMultiStepReadOnly" "MultiStep.SubStep.*" <Dll> "MrMultiStepDependencies" <Context> "ONLINE" }
  <Dependency."MrMS_DH_AutoStore"> {"Properties.AutoLoad.AutoStore" <Dll> "MrMultiStepDependencies" <Context> "ONLINE" }
  <Dependency."MrMS_DH_recon_prio"> {"Properties.Reconstruction.recon_prio" "PerformanceCache.recon_prio_can_set" <Dll> "MrMultiStepDependencies" <Context> "ONLINE" }
  <Dependency."MrMS_DH_InlinePosDisp"> {"Properties.AutoLoad.InlinePositionDisplay" <Dll> "MrMultiStepDependencies" <Context> "ONLINE" }
  <Dependency."MrMS_DH_TpPosMode"> {"MultiStep.TpPosMode" <Dll> "MrMultiStepDependencies" <Context> "ONLINE" }
  <Dependency."MrMS_DH_AutoLoad"> {"Properties.AutoLoad.LoadToGraphic" "Properties.AutoLoad.GraphicSegmentChoice" "Properties.AutoLoad.InlineMovie" <Dll> "MrMultiStepDependencies" <Context> "ONLINE" }
  <Dependency."MrMS_DH_SubStepProperties"> {"MultiStep.SubStep" "MultiStep.IsMultistep" "LoadHook" "Properties.Sound.PreSound" "Properties.Sound.PostSound" "Properties.Sound.PreSoundOn" "Properties.Sound.PostSoundOn" "Properties.AutoLoad.LoadToGraphic" "Properties.AutoLoad.GraphicSegmentChoice" "Properties.Queue.WaitForUserToStart" <Dll> "MrMultiStepDependencies" <Context> "ONLINE" }
  <Dependency."MrMS_DH_Forward"> {"MultiStep.IsMultistep" "MultiStep.SubStep" "Properties.AutoLoad.InlinePositionDisplay" "Properties.AutoLoad.InlinePositionDisplayOrientation" "Properties.AutoLoad.DisableAutoTransfer" "DMWL.Pause.CodeValue" "DMWL.Pause.CodingSchemeVersion" "DMWL.Pause.CodingSchemeDesignator" "DMWL.Pause.CodeMeaning" "DMWL.Meas.CodeValue" "DMWL.Meas.CodingSchemeVersion" "DMWL.Meas.CodingSchemeDesignator" "DMWL.Meas.CodeMeaning" "MultiStep.SeriesDescription" <Dll> "MrMultiStepDependencies" <Context> "ONLINE" }
  <Dependency."1_Visibility"> {"AlwaysFalse" "Properties.Sound.PreSoundOn" "Properties.Sound.PostSoundOn" <Context> "ONLINE" }
  <Dependency."MrMS_DH_ACS"> {"Properties.Queue.CoilSelectMode" <Dll> "MrMultiStepDependencies" <Context> "ONLINE" }
  <Dependency."MrMS_DH_IRT"> {"MultiStep.IsInlineCompose" "Properties.Queue.CoilSelectMode" <Dll> "MrMultiStepDependencies" <Context> "ONLINE" }
  <Dependency."MrMS_DH_TIMCT"> {"MultiStep.IsInlineCompose" <Dll> "MrMultiStepDependencies" <Context> "ONLINE" }
  
}
<XProtocol> 
{
  <ID> 50 
  <Userversion> 4.5 
  
  <ParamMap.""> 
  {
    <PipeService."EVA"> 
    {
      <Class> "PipeLinkService@MrParc" 
      
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
        <ParamBool."save_orig">  { "true"  }
        <Method."ComputeImage">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Event."ImageReady">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Connection."c1">  { "ImageReady" "" "ComputeImage"  }
      }
      <ParamBool."save_orig">  { "true"  }
    }
  }
}
### ASCCONV BEGIN object=MrProtDataImpl@MrProtocolData version=51280000 converter=%MEASCONST%/ConverterList/Prot_Converter.txt ###
ulVersion	 = 	51280000
tSequenceFileName	 = 	"%CustomerSeq%\ns_tfl_rfmap"
tProtocolName	 = 	"Initialized by sequence"
tdefaultEVAProt	 = 	"%SiemensEvaDefProt%\Inline\Inline.evp"
lScanRegionPosTra	 = 	0.0
ucScanRegionPosValid	 = 	0x1
lPtabAbsStartPosZ	 = 	0
bPtabAbsStartPosZValid	 = 	0x0
ucTablePositioningMode	 = 	2
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
lScanTimeSec	 = 	20
lTotalScanTimeSec	 = 	20
dRefSNR	 = 	313049.51685
dRefSNR_VOI	 = 	313049.51685
ucMotionCorr	 = 	1
ucCineMode	 = 	1
ucSequenceType	 = 	1
ucCoilCombineMode	 = 	1
ucFlipAngleMode	 = 	1
lTOM	 = 	1
ucReadOutMode	 = 	1
ucBold3dPace	 = 	1
ucForcePositioningOnNDIS	 = 	1
ucTmapB0Correction	 = 	1
ucTmapEval	 = 	1
ucTmapImageType	 = 	1
ulOrganUnderExamination	 = 	1
dTissueT1	 = 	10.0
dTissueT2	 = 	5.0
lInvContrasts	 = 	1
ulReaquisitionMode	 = 	1
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
sTXSPEC.ucRFPulseType	 = 	4
sTXSPEC.ucExcitMode	 = 	1
sTXSPEC.ucSimultaneousExcitation	 = 	1
sTXSPEC.lB1ShimMode	 = 	1
sTXSPEC.asNucleusInfo.__attribute__.size	 = 	2
sTXSPEC.asNucleusInfo[0].tNucleus	 = 	"1H"
sTXSPEC.asNucleusInfo[0].lCoilSelectIndex	 = 	0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.MaxOnlineTxAmpl.__attribute__.size	 = 	16
sTXSPEC.asNucleusInfo[0].CompProtectionValues.WorstCaseMaxOnlineTxAmpl.__attribute__.size	 = 	16
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariation.__attribute__.size	 = 	16
sTXSPEC.asNucleusInfo[0].CompProtectionValues.DecouplingMatrix.ComplexData.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.ZZMatrixVector.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.ScatterMatrix.ComplexData.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[0].aTxScaleFactorSlice.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[1].lCoilSelectIndex	 = 	-1
sTXSPEC.asNucleusInfo[1].CompProtectionValues.MaxOnlineTxAmpl.__attribute__.size	 = 	16
sTXSPEC.asNucleusInfo[1].CompProtectionValues.WorstCaseMaxOnlineTxAmpl.__attribute__.size	 = 	16
sTXSPEC.asNucleusInfo[1].CompProtectionValues.adGainVariation.__attribute__.size	 = 	16
sTXSPEC.asNucleusInfo[1].CompProtectionValues.DecouplingMatrix.ComplexData.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[1].CompProtectionValues.ZZMatrixVector.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[1].CompProtectionValues.ScatterMatrix.ComplexData.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[1].aTxScaleFactorSlice.__attribute__.size	 = 	0
sTXSPEC.aRFPULSE.__attribute__.size	 = 	256
sTXSPEC.aRFPULSE[0].flAmplitudeNL	 = 	16.9222049713
sTXSPEC.aRFPULSE[2].flAmplitudeNL	 = 	189.028488159
sTXSPEC.aTxScaleFactor.__attribute__.size	 = 	16
sTXSPEC.aPTXRFPulse.__attribute__.size	 = 	0
sTXSPEC.B1CorrectionParameters.bValid	 = 	0x0
sTXSPEC.B1CorrectionParameters.bActive	 = 	0x0
sTXSPEC.B1CorrectionParameters.flCorrectionFactorMax	 = 	1.0
sTXSPEC.B1CorrectionParameters.flPeakReserveFactor	 = 	0.0
sRXSPEC.UseDoubleDataRate	 = 	0x0
sRXSPEC.asNucleusInfo.__attribute__.size	 = 	2
sRXSPEC.asNucleusInfo[0].tNucleus	 = 	"1H"
sRXSPEC.asNucleusInfo[0].lCoilSelectIndex	 = 	0
sRXSPEC.asNucleusInfo[1].lCoilSelectIndex	 = 	-1
sRXSPEC.alVariCapVoltages.__attribute__.size	 = 	4
sRXSPEC.alDwellTime.__attribute__.size	 = 	128
sRXSPEC.alDwellTime[0]	 = 	9800
sAdjData.uiAdjFreMode	 = 	1
sAdjData.uiAdjShimMode	 = 	1
sAdjData.uiAdjWatSupMode	 = 	1
sAdjData.uiAdjRFMapMode	 = 	1
sAdjData.uiAdjMDSMode	 = 	1
sAdjData.uiAdjTableTolerance	 = 	1
sAdjData.lCoupleAdjVolTo	 = 	1
sAdjData.uiAdjB0AcqMode	 = 	1
sAdjData.uiAdjB1AcqMode	 = 	1
alTR.__attribute__.size	 = 	256
alTR[0]	 = 	10000000
alTI.__attribute__.size	 = 	256
alTI[0]	 = 	300000
alTI[1]	 = 	1000000
alTD.__attribute__.size	 = 	256
alTE.__attribute__.size	 = 	256
alTE[0]	 = 	2010
acFlowComp.__attribute__.size	 = 	256
acFlowComp[0]	 = 	1
sSliceArray.lSize	 = 	40
sSliceArray.lConc	 = 	1
sSliceArray.ucMode	 = 	4
sSliceArray.ucAnatomicalSliceMode	 = 	4
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
sNavigatorPara.lBreathHoldDuration_us	 = 	15000000
sNavigatorPara.lBreathHoldMeas	 = 	1
sNavigatorPara.lRespComp	 = 	4
sNavigatorPara.adTrackingFactor.__attribute__.size	 = 	2
sNavigatorPara.adAcceptWindow.__attribute__.size	 = 	2
sNavigatorPara.adAcceptPosition.__attribute__.size	 = 	2
sNavigatorPara.adSearchWindow.__attribute__.size	 = 	2
sNavigatorPara.alFree.__attribute__.size	 = 	36
sNavigatorPara.adFree.__attribute__.size	 = 	24
sNavigatorPara.tFree.__attribute__.size	 = 	128
sBladePara.dBladeCoverage	 = 	100.0
sBladePara.ucMotionCorr	 = 	2
sBladePara.alFree.__attribute__.size	 = 	16
sBladePara.adFree.__attribute__.size	 = 	8
sPrepPulses.ucFatSat	 = 	4
sPrepPulses.ucWaterSat	 = 	4
sPrepPulses.ucInversion	 = 	4
sPrepPulses.ucSatRecovery	 = 	1
sPrepPulses.ucT2Prep	 = 	1
sPrepPulses.ucTIScout	 = 	1
sPrepPulses.ucFatSatMode	 = 	2
sPrepPulses.dDarkBloodThickness	 = 	200.0
sPrepPulses.dDarkBloodFlipAngle	 = 	200.0
sPrepPulses.dIRPulseThicknessFactor	 = 	0.77
sPrepPulses.ucBloodSuppression	 = 	1
sPrepPulses.lPhaseCorrectionMode	 = 	1
sPrepPulses.ucIRScheme	 = 	1
sPrepPulses.lFatSupOpt	 = 	1
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
sKSpace.lRadialInterleavesPerImage	 = 	2
sKSpace.lLinesPerShot	 = 	1
sKSpace.unReordering	 = 	2
sKSpace.ucPhasePartialFourier	 = 	16
sKSpace.ucSlicePartialFourier	 = 	16
sKSpace.ucAveragingMode	 = 	2
sKSpace.ucMultiSliceMode	 = 	2
sKSpace.ucDimension	 = 	2
sKSpace.ucTrajectory	 = 	1
sKSpace.ucViewSharing	 = 	1
sKSpace.ucAsymmetricEchoMode	 = 	1
sKSpace.ucPOCS	 = 	1
sKSpace.ucReadoutPartialFourier	 = 	16
sFastImaging.lEPIFactor	 = 	1
sFastImaging.lTurboFactor	 = 	16
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
sPhysioImaging.ucAlwaysSendPhysioData	 = 	0x0
sPhysioImaging.sPhysioECG.lTriggerPulses	 = 	1
sPhysioImaging.sPhysioECG.lTriggerWindow	 = 	5
sPhysioImaging.sPhysioECG.lArrhythmiaDetection	 = 	1
sPhysioImaging.sPhysioECG.lCardiacGateOnThreshold	 = 	100000
sPhysioImaging.sPhysioECG.lCardiacGateOffThreshold	 = 	700000
sPhysioImaging.sPhysioECG.lTriggerIntervals	 = 	1
sPhysioImaging.sPhysioPulse.lTriggerPulses	 = 	1
sPhysioImaging.sPhysioPulse.lTriggerWindow	 = 	5
sPhysioImaging.sPhysioPulse.lArrhythmiaDetection	 = 	1
sPhysioImaging.sPhysioPulse.lCardiacGateOnThreshold	 = 	100000
sPhysioImaging.sPhysioPulse.lCardiacGateOffThreshold	 = 	700000
sPhysioImaging.sPhysioPulse.lTriggerIntervals	 = 	1
sPhysioImaging.sPhysioExt.lTriggerPulses	 = 	1
sPhysioImaging.sPhysioExt.lTriggerWindow	 = 	5
sPhysioImaging.sPhysioExt.lArrhythmiaDetection	 = 	1
sPhysioImaging.sPhysioExt.lCardiacGateOnThreshold	 = 	100000
sPhysioImaging.sPhysioExt.lCardiacGateOffThreshold	 = 	700000
sPhysioImaging.sPhysioExt.lTriggerIntervals	 = 	1
sPhysioImaging.sPhysioExt2.lTriggerIntervals	 = 	1
sPhysioImaging.sPhysioResp.lRespGateThreshold	 = 	20
sPhysioImaging.sPhysioResp.lRespGatePhase	 = 	2
sPhysioImaging.sPhysioResp.dGatingRatio	 = 	0.3
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
sDistortionCorrFilter.ucMode	 = 	1
sNoiseDecorrData.lNoiseDecorrDefaultMode	 = 	4
sPat.lAccelFactPE	 = 	1
sPat.lAccelFact3D	 = 	1
sPat.ucPATMode	 = 	1
sPat.ucRefScanMode	 = 	1
sPat.ucTPatAverageAllFrames	 = 	0x1
sPat.ulCaipirinhaMode	 = 	1
sMds.ulMdsModeMask	 = 	1
sMds.ulMdsVariableResolution	 = 	1
sMds.lTableSpeedNumerator	 = 	1
sMds.lmdsLinesPerSegment	 = 	15
sMds.lMdsPtabAbsStartPosZ	 = 	0
sMds.bMdsPtabAbsStartPosZValid	 = 	0x0
sMds.lMdsPtabAbsEndPosZ	 = 	0
sMds.bMdsPtabAbsEndPosZValid	 = 	0x0
sMds.ulMdsReconMode	 = 	1
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
alRepetitionsDelayTimeMs.__attribute__.size	 = 	64
adFlipAngleDegree.__attribute__.size	 = 	32
adFlipAngleDegree[0]	 = 	5.0
adFlipAngleDegree[1]	 = 	8.0
aulServicePara.__attribute__.size	 = 	5
uiPerProxy2Skip.__attribute__.size	 = 	2
sCoilSelectMeas.dOverallImageScaleFactor	 = 	0.4096
sCoilSelectMeas.dOverallImageScaleCorrectionFactor	 = 	1.0
sCoilSelectMeas.dAutoCoilSelectIlluRangeScale	 = 	0.699999988079
sCoilSelectMeas.aRxCoilSelectData.__attribute__.size	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].tNucleus	 = 	"1H"
sCoilSelectMeas.aRxCoilSelectData[0].iUsedRFactor	 = 	3
sCoilSelectMeas.aRxCoilSelectData[0].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[0].asList.__attribute__.size	 = 	32
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].lMuxChannelConnected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].lRxChannelConnected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].lADCChannelConnected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].sCoilElementID.tElement	 = 	"A01"
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].sCoilElementID.ulUniqueKey	 = 	1383223252
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].lMuxChannelConnected	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].lRxChannelConnected	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].lADCChannelConnected	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].sCoilElementID.tElement	 = 	"A02"
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].sCoilElementID.ulUniqueKey	 = 	366097668
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].lMuxChannelConnected	 = 	3
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].lRxChannelConnected	 = 	3
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].lADCChannelConnected	 = 	3
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].sCoilElementID.tElement	 = 	"A03"
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].sCoilElementID.ulUniqueKey	 = 	682761396
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].lMuxChannelConnected	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].lRxChannelConnected	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].lADCChannelConnected	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].sCoilElementID.tElement	 = 	"A04"
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].sCoilElementID.ulUniqueKey	 = 	-1701658460
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].lMuxChannelConnected	 = 	5
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].lRxChannelConnected	 = 	5
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].lADCChannelConnected	 = 	5
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].sCoilElementID.tElement	 = 	"A05"
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].sCoilElementID.ulUniqueKey	 = 	-1477252844
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].lMuxChannelConnected	 = 	6
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].lRxChannelConnected	 = 	6
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].lADCChannelConnected	 = 	6
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].sCoilElementID.tElement	 = 	"A06"
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].sCoilElementID.ulUniqueKey	 = 	-531459132
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].lMuxChannelConnected	 = 	7
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].lRxChannelConnected	 = 	7
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].lADCChannelConnected	 = 	7
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].sCoilElementID.tElement	 = 	"A07"
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].sCoilElementID.ulUniqueKey	 = 	-583878028
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].lMuxChannelConnected	 = 	8
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].lRxChannelConnected	 = 	8
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].lADCChannelConnected	 = 	8
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].sCoilElementID.tElement	 = 	"A08"
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].sCoilElementID.ulUniqueKey	 = 	1600269733
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].lMuxChannelConnected	 = 	9
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].lRxChannelConnected	 = 	9
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].lADCChannelConnected	 = 	9
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].sCoilElementID.tElement	 = 	"A09"
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].sCoilElementID.ulUniqueKey	 = 	1644299285
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].lMuxChannelConnected	 = 	10
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].lRxChannelConnected	 = 	10
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].lADCChannelConnected	 = 	10
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].sCoilElementID.tElement	 = 	"A10"
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].sCoilElementID.ulUniqueKey	 = 	-1538345535
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].lMuxChannelConnected	 = 	11
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].lRxChannelConnected	 = 	11
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].lADCChannelConnected	 = 	11
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].sCoilElementID.tElement	 = 	"A11"
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].sCoilElementID.ulUniqueKey	 = 	-1724998543
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].lMuxChannelConnected	 = 	12
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].lRxChannelConnected	 = 	12
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].lADCChannelConnected	 = 	12
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].sCoilElementID.tElement	 = 	"A12"
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].sCoilElementID.ulUniqueKey	 = 	-561060191
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].lMuxChannelConnected	 = 	13
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].lRxChannelConnected	 = 	13
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].lADCChannelConnected	 = 	13
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].sCoilElementID.tElement	 = 	"A13"
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].sCoilElementID.ulUniqueKey	 = 	-470888687
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].lMuxChannelConnected	 = 	14
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].lRxChannelConnected	 = 	14
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].lADCChannelConnected	 = 	14
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].sCoilElementID.tElement	 = 	"A14"
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].sCoilElementID.ulUniqueKey	 = 	1372459777
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].lMuxChannelConnected	 = 	15
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].lRxChannelConnected	 = 	15
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].lADCChannelConnected	 = 	15
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].sCoilElementID.tElement	 = 	"A15"
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].sCoilElementID.ulUniqueKey	 = 	1823357617
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].lMuxChannelConnected	 = 	16
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].lRxChannelConnected	 = 	16
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].lADCChannelConnected	 = 	16
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].sCoilElementID.tElement	 = 	"A16"
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].sCoilElementID.ulUniqueKey	 = 	722354273
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].lMuxChannelConnected	 = 	17
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].lRxChannelConnected	 = 	17
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].lADCChannelConnected	 = 	17
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].sCoilElementID.tElement	 = 	"A17"
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].sCoilElementID.ulUniqueKey	 = 	376334801
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].lMuxChannelConnected	 = 	18
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].lRxChannelConnected	 = 	18
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].lADCChannelConnected	 = 	18
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].sCoilElementID.tElement	 = 	"A18"
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].sCoilElementID.ulUniqueKey	 = 	-1807811072
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].lMuxChannelConnected	 = 	19
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].lRxChannelConnected	 = 	19
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].lADCChannelConnected	 = 	19
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].sCoilElementID.tElement	 = 	"A19"
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].sCoilElementID.ulUniqueKey	 = 	-1453402192
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].lMuxChannelConnected	 = 	20
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].lRxChannelConnected	 = 	20
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].lADCChannelConnected	 = 	20
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].sCoilElementID.tElement	 = 	"A20"
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].sCoilElementID.ulUniqueKey	 = 	584763247
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].lMuxChannelConnected	 = 	21
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].lRxChannelConnected	 = 	21
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].lADCChannelConnected	 = 	21
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].sCoilElementID.tElement	 = 	"A21"
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].sCoilElementID.ulUniqueKey	 = 	532344543
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].lMuxChannelConnected	 = 	22
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].lRxChannelConnected	 = 	22
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].lADCChannelConnected	 = 	22
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].sCoilElementID.tElement	 = 	"A22"
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].sCoilElementID.ulUniqueKey	 = 	1478136847
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].lMuxChannelConnected	 = 	23
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].lRxChannelConnected	 = 	23
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].lADCChannelConnected	 = 	23
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].sCoilElementID.tElement	 = 	"A23"
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].sCoilElementID.ulUniqueKey	 = 	1702542783
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].lMuxChannelConnected	 = 	24
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].lRxChannelConnected	 = 	24
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].lADCChannelConnected	 = 	24
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].sCoilElementID.tElement	 = 	"A24"
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].sCoilElementID.ulUniqueKey	 = 	-681942609
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].lMuxChannelConnected	 = 	25
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].lRxChannelConnected	 = 	25
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].lADCChannelConnected	 = 	25
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].sCoilElementID.tElement	 = 	"A25"
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].sCoilElementID.ulUniqueKey	 = 	-365279201
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].lMuxChannelConnected	 = 	26
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].lRxChannelConnected	 = 	26
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].lADCChannelConnected	 = 	26
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].sCoilElementID.tElement	 = 	"A26"
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].sCoilElementID.ulUniqueKey	 = 	-1382403377
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].lMuxChannelConnected	 = 	27
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].lRxChannelConnected	 = 	27
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].lADCChannelConnected	 = 	27
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].sCoilElementID.tElement	 = 	"A27"
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].sCoilElementID.ulUniqueKey	 = 	-1862657153
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].lMuxChannelConnected	 = 	28
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].lRxChannelConnected	 = 	28
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].lADCChannelConnected	 = 	28
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].sCoilElementID.tElement	 = 	"A28"
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].sCoilElementID.ulUniqueKey	 = 	313167022
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].lMuxChannelConnected	 = 	29
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].lRxChannelConnected	 = 	29
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].lADCChannelConnected	 = 	29
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].sCoilElementID.tElement	 = 	"A29"
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].sCoilElementID.ulUniqueKey	 = 	801809694
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].lMuxChannelConnected	 = 	30
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].lRxChannelConnected	 = 	30
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].lADCChannelConnected	 = 	30
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].sCoilElementID.tElement	 = 	"A30"
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].sCoilElementID.ulUniqueKey	 = 	-377088822
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].lMuxChannelConnected	 = 	31
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].lRxChannelConnected	 = 	31
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].lADCChannelConnected	 = 	31
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].sCoilElementID.tElement	 = 	"A31"
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].sCoilElementID.ulUniqueKey	 = 	-723108486
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].lMuxChannelConnected	 = 	32
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].lRxChannelConnected	 = 	32
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].lADCChannelConnected	 = 	32
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].sCoilElementID.tElement	 = 	"A32"
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].sCoilElementID.ulUniqueKey	 = 	-1824110678
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE.__attribute__.size	 = 	32
sCoilSelectMeas.aRxCoilSelectData[1].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[1].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[1].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[1].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aTxCoilSelectData.__attribute__.size	 = 	2
sCoilSelectMeas.aTxCoilSelectData[0].tNucleus	 = 	"1H"
sCoilSelectMeas.aTxCoilSelectData[0].asList.__attribute__.size	 = 	32
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sCoilElementID.tCoilID	 = 	"1Tx32Rx_Head"
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sCoilElementID.tElement	 = 	"VC"
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sCoilElementID.ulUniqueKey	 = 	1150265407
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sTxScaleFactorCP.dRe	 = 	1.0
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sTxScaleFactorEP.dRe	 = 	1.0
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[1].asList.__attribute__.size	 = 	32
sCoilSelectMeas.CoilPlugs.Plug.__attribute__.size	 = 	11
sCoilSelectMeas.CoilPlugs.Plug[0].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[0].IdPart[0]	 = 	238
sCoilSelectMeas.CoilPlugs.Plug[1].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[1].IdPart[0]	 = 	184
sCoilSelectMeas.CoilPlugs.Plug[2].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[2].IdPart[0]	 = 	185
sCoilSelectMeas.CoilPlugs.Plug[3].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[3].IdPart[0]	 = 	186
sCoilSelectMeas.CoilPlugs.Plug[4].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[4].IdPart[0]	 = 	187
sCoilSelectMeas.CoilPlugs.Plug[5].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[5].IdPart[0]	 = 	238
sCoilSelectMeas.CoilPlugs.Plug[6].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[6].IdPart[0]	 = 	238
sCoilSelectMeas.CoilPlugs.Plug[7].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[7].IdPart[0]	 = 	238
sCoilSelectMeas.CoilPlugs.Plug[8].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[8].IdPart[0]	 = 	238
sCoilSelectMeas.CoilPlugs.Plug[9].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[9].IdPart[0]	 = 	238
sCoilSelectMeas.CoilPlugs.Plug[10].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[10].IdPart[0]	 = 	238
sCoilSelectUI.dOverallImageScaleFactor	 = 	1.0
sCoilSelectUI.dOverallImageScaleCorrectionFactor	 = 	1.0
sCoilSelectUI.dAutoCoilSelectIlluRangeScale	 = 	0.7
sCoilSelectUI.aRxCoilSelectData.__attribute__.size	 = 	2
sCoilSelectUI.aRxCoilSelectData[0].IgnoreCoilGroups	 = 	0x0
sCoilSelectUI.aRxCoilSelectData[0].BCCombineMode	 = 	1
sCoilSelectUI.aRxCoilSelectData[0].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectUI.aRxCoilSelectData[0].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectUI.aRxCoilSelectData[0].asList.__attribute__.size	 = 	8
sCoilSelectUI.aRxCoilSelectData[0].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectUI.aRxCoilSelectData[1].IgnoreCoilGroups	 = 	0x0
sCoilSelectUI.aRxCoilSelectData[1].BCCombineMode	 = 	1
sCoilSelectUI.aRxCoilSelectData[1].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectUI.aRxCoilSelectData[1].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectUI.aRxCoilSelectData[1].asList.__attribute__.size	 = 	8
sCoilSelectUI.aRxCoilSelectData[1].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectUI.aTxCoilSelectData.__attribute__.size	 = 	2
sCoilSelectUI.aTxCoilSelectData[0].asList.__attribute__.size	 = 	32
sCoilSelectUI.aTxCoilSelectData[1].asList.__attribute__.size	 = 	32
sCoilSelectUI.CoilPlugs.Plug.__attribute__.size	 = 	11
sCoilSelectUI.CoilPlugs.Plug[0].IdPart.__attribute__.size	 = 	8
sCoilSelectUI.CoilPlugs.Plug[1].IdPart.__attribute__.size	 = 	8
sCoilSelectUI.CoilPlugs.Plug[2].IdPart.__attribute__.size	 = 	8
sCoilSelectUI.CoilPlugs.Plug[3].IdPart.__attribute__.size	 = 	8
sCoilSelectUI.CoilPlugs.Plug[4].IdPart.__attribute__.size	 = 	8
sCoilSelectUI.CoilPlugs.Plug[5].IdPart.__attribute__.size	 = 	8
sCoilSelectUI.CoilPlugs.Plug[6].IdPart.__attribute__.size	 = 	8
sCoilSelectUI.CoilPlugs.Plug[7].IdPart.__attribute__.size	 = 	8
sCoilSelectUI.CoilPlugs.Plug[8].IdPart.__attribute__.size	 = 	8
sCoilSelectUI.CoilPlugs.Plug[9].IdPart.__attribute__.size	 = 	8
sCoilSelectUI.CoilPlugs.Plug[10].IdPart.__attribute__.size	 = 	8
sEFISPEC.sEFIData.asTHP_WithB0.__attribute__.size	 = 	5
sEFISPEC.sEFIData.asTHP_WithoutB0.__attribute__.size	 = 	5
sEFISPEC.sEFIData.asTHP_EfiDas1.__attribute__.size	 = 	5
sEFISPEC.sEFIData.sPhaseshiftAndWeightsPara.__attribute__.size	 = 	4
sEFISPEC.sEFIData.sOffsetParameter.aflOffsetK.__attribute__.size	 = 	3
sEFISPEC.sEFIData.sOffsetParameter.alBOffsetK.__attribute__.size	 = 	3
sWipMemBlock.alFree.__attribute__.size	 = 	64
sWipMemBlock.alFree[3]	 = 	40
sWipMemBlock.alFree[9]	 = 	80
sWipMemBlock.alFree[63]	 = 	12345
sWipMemBlock.adFree.__attribute__.size	 = 	16
sWipMemBlock.adFree[10]	 = 	9.0
sWipMemBlock.adRes.__attribute__.size	 = 	3
ucBOLDParadigmArray.__attribute__.size	 = 	256
sParametricMapping.ucParametricMap	 = 	1
sIR.alMagicID.__attribute__.size	 = 	2
sIR.alFree.__attribute__.size	 = 	16
sIR.adFree.__attribute__.size	 = 	16
sAsl.ulMode	 = 	1
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
sDixonData.ucDixon	 = 	0x0
sDixonData.ucDixonEvaluation	 = 	0x0
sDixonData.ucFastDixon	 = 	0x0
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
asDynmicAdjustVolumes.__attribute__.size	 = 	0
sSliceAcceleration.lMultiBandFactor	 = 	1
sSliceAcceleration.lFOVShiftFactor	 = 	1
### ASCCONV END ###
