//USEUNIT CheckPMESecurtiySystemPack
///////////////////////////////////
///////import system level pams//
///////////////////////////////////
function ImportSystemLevel()
{
  TestedApps.Sculi.Close();
  var sculi;
  var winformsUIAskedOnceAndCachedForm;
  var sculiForm;
  var actionMainMenuBar;
  var standardMenuButton;
  var licenseFileManagementForm;
  var directUIHWND;
  var directUIHWND2;
  var LicenseFile_Path= "C:\\Users\\lmbcad0\\Desktop\\License files\\LicenseFile-1J PME System Pack & EDC Light Pack.xml";
  //var LicenseDataDriver = aqFile.
  TestedApps.Sculi.Run();
  sculi = Aliases.Sculi;
Aliases.Sculi.TokenChoiceForm.BtnUse.ClickButton(); 
winformsUIAskedOnceAndCachedForm = sculi.WinformsUIAskedOnceAndCachedForm;
winformsUIAskedOnceAndCachedForm.PasswordBox.SetText("Liebherr-1");
winformsUIAskedOnceAndCachedForm.buttonOk.ClickButton();
//help/import
Aliases.Sculi.SculiForm.ActionMainMenuBar.TStandardMenuButton4.Click();
Aliases.Sculi.TStandardMenuPopup.TStandardMenuItem2.Click();
     Delay(2000); 
Aliases.Sculi.VCLObject("LicenseFileManagementForm").VCLObject("GroupBox2").VCLObject("BtnImport").ClickButton();
NameMapping.Sys.Sculi.dlgChooseLicenseFileToImport.ComboBoxEx32.ComboBox.Edit.SetText(LicenseFile_Path);  
Delay(1000);
NameMapping.Sys.Sculi.dlgChooseLicenseFileToImport.btnOpen.ClickButton();

sculi.dlgInformation.btnOK.ClickButton();

Aliases.Sculi.VCLObject("LicenseFileManagementForm").VCLObject("BtnClose").ClickButton();
  
  TestedApps.Sculi.Close();
  CheckPMESystemPackPermission();
     Delay(5000);
}
// LicenseFile_Path C:\Users\lmbtuh0\Desktop\Louis Lantier


