function CheckPMEInspectorPermission()
{
  var sculi;
  var standardMenuButton;

  TestedApps.Sculi.Run(1, true);
  sculi = Aliases.Sculi;
  Aliases.Sculi.SculiForm.ActionMainMenuBar.TStandardMenuButton.Click();
  Aliases.Sculi.TStandardMenuPopup.TStandardMenuItem.Click();
  Aliases.Sculi.InspectorForm.PageControl.Click();
  
  Delay(2000);
  
  TestedApps.Sculi.Close();
}

