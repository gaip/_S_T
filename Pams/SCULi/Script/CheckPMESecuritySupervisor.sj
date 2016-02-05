function compare_items(file, oitems)
{
    var fitems = aqFile.ReadWholeTextFile(file, aqFile.ctANSI), found = false, error = 0, str1, str2, c1, c2
    fitems = fitems.split("\n");

    if  (fitems[fitems.length - 1] === "") fitems.pop();
    if (fitems.length != oitems.Count) {
        Log.Warning("Item counts are different " + fitems.length + " and " + oitems.Count)
    }
    
    for (var i = 0; i < oitems.Count; i++)
    {
        found = false
        for (var k in fitems) {
            str1 = oitems.Item(i).Text.replace("\n\r", "")
            str2 = fitems[k].replace("\n\r", "")
            if (aqString.Compare(str1, str2.substr(0, str1.length), true) === 0) {
                found = true
                fitems.splice(k, 1);
                break;
            }
        }
        if (found === false) {
            Log.Warning("Item '" + oitems.Item(i).Text + "' is not found in the file");
            error = error + 1
        }
    }
    
    if (error == 0)
        Log.Message("All list control items are found in the file")
    else
        Log.Message(error + " items are not found in the file")
    if (fitems.length > 0) {
        for (var k in fitems) {
            Log.Warning("Item '" + fitems[k] + "' is present in the file but not found in the list control");
        }
    }     
}

function compare_files(file1, file2)
{
    var fitems1 = aqFile.ReadWholeTextFile(file1, aqFile.ctANSI), found = false, error = 0, str1, str2, c1, c2
    var fitems2 = aqFile.ReadWholeTextFile(file2, aqFile.ctANSI)
    
    fitems1 = fitems1.split("\n");
    fitems2 = fitems2.split("\n");

    if  (fitems1[fitems1.length - 1] === "") fitems1.pop();
    if  (fitems2[fitems2.length - 1] === "") fitems2.pop();
    
    if (fitems1.length != fitems2.length) {
        Log.Warning("Item counts are different " + fitems1.length + " and " + fitems2.length)
    }
    
    for (var i in fitems2)
    {
        found = false
        for (var k in fitems1) {
            str1 = fitems2[i].replace("\n\r", "")
            str2 = fitems1[k].replace("\n\r", "")
            if (aqString.Compare(str1, str2.substr(0, str1.length), true) === 0) {
                found = true
                fitems1.splice(k, 1);
                break;
            }
        }
        if (found === false) {
            Log.Warning("Item '" + fitems2[i] + "' is not found in the file");
            error = error + 1
        }
    }
    
    if (error == 0)
        Log.Message("All list control items are found in the file")
    else
        Log.Message(error + " items are not found in the file")
    if (fitems1.length > 0) {
        for (var k in fitems1) {
            Log.Warning("Item '" + fitems1[k] + "' is present in the file but not found in the list control");
        }
    }     
}

/////////////////////////////////////////
/// Check PME Shipping Permissons  ///
/////////////////////////////////////////
function CheckPMESupervisorPermission()
{
  var securedEntitiesPMESupervisor=["SculiTracerWindow (The tracer window provided by the Sculi program)",
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
                                   "MessageAnalyzerEraseErrorMemory (Erase Error memory from Message Analyzer)",
                                   "RecorderFunction (Recorder function)",
                                   "OscilloscopeFunction (Oscilloscope function)",
                                   "PMEVariableLevelSupervisor (Marx Dongle set as Supervisor with PME Liuid)",
                                   "PMELiftRead (Lift read function)",
                                   "PMELiftWrite (Lift write function)",
                                   "PMEMonitorEmulationFunction (PME monitor emulation function)",
                                   "PMEWizard (Wizard function)",
                                   "PMEModuleInfo (Module info function)",
                                   "PMEModuleEditor (Module Editor function)",
                                   "PMEMessageStack (Delete message stack)",
                                   "PMEPDRTrialVersion (PDR Trial version (test database))"];
  
  securedEntitiesPMESupervisor=[];

                                   
  CheckPermission(securedEntitiesPMESupervisor);
                                 
}

////////////////
/// PRIVATE  ///
////////////////
function CheckPermission(control)
{
 // TestedApps.CloseAll();



  // Check the count of Secured Entities
  var items 
  if (items.Count != securedEntitiesPMESupervisor.length)
  {
    Log.Error("The Secured Entity count does not match the list displayed  ("+securedEntitiesPMESupervisor.length+" vs. "+items.Count+")");
  }else{
  Log.Message("The Secured Entity match the expected numbers: ("+securedEntitiesPMESupervisor.length+" vs. "+items.Count+")");
  }

  // Check that the SecureEntites are contained into the list shown into SCULi
  for(var i=0;i<securedEntitiesPMESupervisor.length;i++)
  {
    var founded = false;
    for(var j=0;j<items.Count;j++)
    {
      if (securedEntitiesPMESupervisor[i] == items.Item(j).Text)
      {
        founded = true;
        Log.Message("Secured Entity: "+securedEntitiesPMESupervisor[i] + " found")
        j=items.Count;
      }
    }
    if (founded != true)
    {
      Log.Error("Secured Entity: "+securedEntitiesPMESupervisor[i] + " not found")
    }
  }

  Aliases.Sculi.InspectorForm.Close();
  TestedApps.Sculi.Close();

}

