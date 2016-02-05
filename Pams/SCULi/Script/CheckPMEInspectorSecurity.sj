//////////////////////////////////////
/// Check PME Service Permissions  ///
//////////////////////////////////////
function CheckPMEServicePermission()
{
  var securedEntitiesPMEServicer=["SculiTracerWindow (The tracer window provided by the Sculi program)",
                                   "PMEMessageStack (Delete message stack)",
                                   "PMEPDRTrialVersion (PDR Trial version (test database))"];
                                   
  CheckPermission(securedEntitiesPMEServicer);
}
/////////////////////////////////////////
/// Check PME Inspector Permissions  ///
/////////////////////////////////////////
function CheckPMEInspectorPermission()
{
  var securedEntitiesPMEInspector=["SculiTracerWindow (The tracer window provided by the Sculi program)",
                                   "SculiInspectorWindow (The inspector window provided by the Sculi program)",
                                   "SculiOpenOfflineWindow (Open offline files)",
                                   "SculiAddressBookWindow (Open Address book)",
                                   "SculiTerminal (Standard plugin terminal)",
                                   "VariableEditorShowVariables (Show variables in Variable Editor)",
                                   "VariableEditorFilter (Filter function in Variable Editor)",
                                   "VariableEditorFileLoadSave (Load and save variable files in Variable Editor)",
                                   "VariableEditorCollectVarsInGroups (Collect variable by identifier when loading group)",
                                   "MessageAnalyzerEvents (Show events in Message Analyzer)",
                                   "MessageAnalyzerTips (Display tips in Message Analyzer)",
                                   "MessageAnalyzerDatumFilter (Filter by date in Message Analyzer)",
                                   "MessageAnalyzerPriority (Show low level message in Message Analyzer)",
                                   "MessageAnalyzerFilter (Filter function in Message Analyzer)",
                                   "MessageAnalyzerGraphic (Event graphical view in Message Analyzer)",
                                   "MessageAnalyzerUserAcknow (User acknowledged message in Message Analyzer)",
                                //   "MessageAnalyzerEraseErrorMemory (Erase Error memory from Message Analyzer)",
                                   "RecorderFunction (Recorder function)",
                                   "OscilloscopeFunction (Oscilloscope function)",
                                   "PMEVariableLevelInspector (Marx Dongle set as Inspector with PME Liuid)",
                                   "PMELiftRead (Lift read function)",
                                   "PMELiftWrite (Lift write function)",
                                   "PMEMonitorEmulationFunction (PME monitor emulation function)",
                                   "PMEWizard (Wizard function)",
                                   "PMEModuleInfo (Module info function)",
                                   "PMEModuleEditor (Module Editor function)",
                                   "PMEMessageStack (Delete message stack)",
                                   "PMEPDRTrialVersion (PDR Trial version (test database))"];
                                   
  CheckPermission(securedEntitiesPMEInspector);
                                 
}

////////////////
/// PRIVATE  ///
////////////////
function CheckPermission(securedEntitiesPMEInspector)
{
 // TestedApps.CloseAll();
  var standardMenuButton;
  var pageControl;
  var groupBox;
  TestedApps.Sculi.Run();
  sculi = Aliases.Sculi;
  //  sculi = Aliases.Sculi;
   Delay(5000);
   
  Aliases.Sculi.TokenChoiceForm.BtnUse.ClickButton(); 
  winformsUIAskedOnceAndCachedForm = sculi.WinformsUIAskedOnceAndCachedForm;

  winformsUIAskedOnceAndCachedForm.PasswordBox.SetText("Liebherr-1");
  winformsUIAskedOnceAndCachedForm.buttonOk.ClickButton();
  standardMenuButton = sculi.SculiForm.ActionMainMenuBar.TStandardMenuButton;
  standardMenuButton.Click(22, 14);
  sculi.TStandardMenuPopup.TStandardMenuItem.Click(45, 7);
  pageControl = sculi.InspectorForm.PageControl;
  pageControl.ClickTab("Security");
  groupBox = pageControl.Security.PermissionsGroupBox;

  groupBox.cboTestLiuid.ClickItem("master4");

   groupBox.btnLiuidRoles.ClickButton();

  // Check the count of Secured Entities
  var items = Aliases.Sculi.InspectorForm.PageControl.Security.PermissionsGroupBox.PermissionsView.wItems;
  if (items.Count != securedEntitiesPMEInspector.length)
  {
    Log.Error("The Secured Entity count does not match the list displayed  ("+securedEntitiesPMEInspector.length+" vs. "+items.Count+")");
  }else{
  Log.Message("The Secured Entity match the expected numbers: ("+securedEntitiesPMEInspector.length+" vs. "+items.Count+")");
  }

  // Check that the SecureEntites are contained into the list shown into SCULi
  for(var i=0;i<securedEntitiesPMEInspector.length;i++)
  {
    var founded = false;
    for(var j=0;j<items.Count;j++)
    {
      if (securedEntitiesPMEInspector[i] == items.Item(j).Text)
      {
        founded = true;
        Log.Message("Secured Entity: "+securedEntitiesPMEInspector[i] + " found")
        j=items.Count;
      }
    }
    if (founded != true)
    {
      Log.Error("Secured Entity: "+securedEntitiesPMEInspector[i] + " not found")
    }
  }

  Aliases.Sculi.InspectorForm.Close();
  TestedApps.Sculi.Close();

}

