function verifyConnectedState(control){
/* verify that the connection is established assertTrue "PME1 Controller RS232 - Master4/UEC3 Connection (RS232,COM8,19200,115200,25,)"*/
var ProgresBar = control.Find;
if (ProgresBar==true)
 Log["Message"]("Connected");
   else 
  Log["Error"]("Connection Error");



// Sys["Process"]("SCULi")["VCLObject"]("SculiForm")["Panel"]("Arbeitsbereich")["VCLObject"]("PluginsContextForm")["VCLObject"]("CMainPanel")["VCLObject"]("Panel3")["VCLObject"]("Panel1")["VCLObject"]("CPluginTabsPanel")["VCLObject"]("CTopPanel")["VCLObject"]("CStatusBar")["Panel"]("Connected [COM8 - 19200] [Inspector]")["TextObject"]("Connected [COM8 - 19200] [Inspector]")

/*var ProgresBarName =ProgresBar["Name"];
var RealObject=Aliases["SCULi"]["wndSculiForm2"]["MDIClient"]["wndPluginsContextForm"]["Panel"]["Panel"]["Panel"]["Panel"]["PME1ControllerRS232"]["SculiStatusBar"]["SculiProgressBar"];
var RealProgresBarName = RealObject["Name"];
var str = "*Connected*"; 
var name = RealObject["Find"]("Name", str);
*/ 


  
 



}


