//USEUNIT object
function file_compare(file1, file2)
{
  var s1 = aqFile.ReadWholeTextFile(file1, aqFile.ctANSI);
  var s2 = aqFile.ReadWholeTextFile(file2, aqFile.ctANSI);
  
  if (aqString.StrMatches(s1, s2))
    Log.Message("MSConfig checked items are identical before and after PC restart")
  else
    Log.Error("MSConfig checked items are NOT identical before and after PC restart")
}

function file_compare_unicode(file1, file2)
{
  var s1 = aqFile.ReadWholeTextFile(file1, aqFile.ctUnicode);
  var s2 = aqFile.ReadWholeTextFile(file2, aqFile.ctUnicode);
  
  if (aqString.StrMatches(s1, s2))
    Log.Message("Files are identical")
  else
    Log.Error("Files are NOT identical")
}

function file_storeMSConfigStartup(file)
{
  var ctrls = object.getChildObject(Aliases.MSConfig, "WndCaption", "Startup")
  ctrls = object.getChildObject(ctrls, "WndClass", "SysListView32")
  ctrls = ctrls.FindAllChildren(["ObjectType", "State"], ["CheckBox", 1], 5)
  ctrls = (new VBArray(ctrls)).toArray();
  
  var out = ""
  for (var i = 0; i < ctrls.length; i++) {
    out  += ctrls[i].Caption + "\r\n"
  }

  aqFile.Delete(file);
  aqFile.Create(file);
  aqFile.WriteToTextFile(file, out, aqFile.ctANSI);
  Log.Message(ctrls.length + " items are written to " + file)
}

function file_StrFind(file, string)
{
  var content = aqFile.ReadWholeTextFile(file, aqFile.ctANSI);
  content = content.split("\n");
  for (var i = 0; i < content.length; i++) {
    if (aqString.StrMatches(string, content[i]) === true) {
      return true;
    }
  }
  
  return false;
}

function file_StrMatches(file, string)
{
  var content = aqFile.ReadWholeTextFile(file, aqFile.ctANSI);
  content = content.split("\n");
  var result = "";
  for (var i = 0; i < content.length; i++) {
    if (aqString.StrMatches(string, content[i]) === true) {
      result += aqString.SubString(content[i], 0, 100) + "...\r\n";
       Log.Message(result+ " command found " + file);
    }
  }
  
  var new_file = aqString.SubString(file, 0, aqString.GetLength(file) - 4) + "New.txt";
  aqFile.Delete(new_file);
  aqFile.Create(new_file);
  aqFile.WriteToTextFile(new_file, result, aqFile.ctANSI);
}

function file_ContentMatches(file, string)
{
  var content = aqFile.ReadWholeTextFile(file, aqFile.ctANSI);
  if (aqString.StrMatches(string, content) === true) {
       Log.Message("'" + string+ "' is found in " + file);
  } else {
       Log.Error("'" + string+ "' is NOT found in " + file);
  }
}

/* Verifies the file exists*/
function file_Exists(file) {
  if (aqFile.Exists(file)) {
    Log.Message("The file '" + file + "' exists")
  } else {
    Log.Error("The file '" + file + "' does NOT exist")
  }
}

/* Verifies the file exists*/
function file_Delete(file) {
  if (aqFile.Exists(file) === false) {
    Log.Message("The file '" + file + "' does NOT exist")
    return;
  }
  if (aqFile.Delete(file)) {
    Log.Message("The file '" + file + "' has been deleted")
  } else {
    Log.Error("The file '" + file + "' is failed to delete")
  }
}
// open a file 
function file_Open() {
  var app = Sys["Process"]("AcroRd32");
  var wndApp = app["Window"]("Acrobat*Window");
  //var wndNotepad = notepad.Window("Notepad");
// Sys["Process"]("AcroRd32")["UIAObject"]("Adobe_Reader")
  // Open a file in adobe reader ")["MenuItem"]("Datei")["Popup"]("Datei")Sys["Process"]("AcroRd32")["UIAObject"]("Adobe_Reader")["MenuBar"]("Anwendungsmenü")["MenuItem"]("Datei")["Popup"]("Datei")["MenuItem"]("Öffnen... Strg+O")
  wndApp.MainMenu.Click(Sys["Process"]("AcroRd32")["UIAObject"]("Adobe_Reader")["MenuBar"]("Anwendungsmenü")["MenuItem"]("Datei"));
    wndApp.MainMenu.Click(Sys["Process"]("AcroRd32")["UIAObject"]("Adobe_Reader")["MenuBar"]("Anwendungsmenü")["MenuItem"]("Datei"));
  wndApp.Window("#32770", "Öffnen").OpenFile("C:\\Users\\lmbtuh0\\Documents\\Data Protocol ECU Lidec 1 2000 00 0000.pdf");


}

function file_Open20130301V8SCRhzmb() {
  var app = Sys["Process"]("SCULi")["Dialog"]("Öffnen");
// var wndApp = app["Window"]("Acrobat*Window");
//var wndNotepad = notepad.Window("Notepad");
// Sys["Process"]("AcroRd32")["UIAObject"]("Adobe_Reader")
  // Open a file in adobe reader ")["MenuItem"]("Datei")["Popup"]("Datei")Sys["Process"]("AcroRd32")["UIAObject"]("Adobe_Reader")["MenuBar"]("Anwendungsmenü")["MenuItem"]("Datei")["Popup"]("Datei")["MenuItem"]("Öffnen... Strg+O")
wndApp.MainMenu.Click(Sys["Process"]("AcroRd32")["UIAObject"]("Adobe_Reader")["MenuBar"]("Anwendungsmenü")["MenuItem"]("Datei"));
wndApp.MainMenu.Click(Sys["Process"]("AcroRd32")["UIAObject"]("Adobe_Reader")["MenuBar"]("Anwendungsmenü")["MenuItem"]("Datei"));
wndApp.Window("#32770", "Öffnen").OpenFile("C:\\Users\\lmbtuh0\\Documents\\Data Protocol ECU Lidec 1 2000 00 0000.pdf");


}


function valueCompate ( value1, value2){

if(value1==value2)
{
Log.Error("Errror");
}
else Log.Error("Not same");
}


function valueCompare(control, prop_name, prop_value, prop_name2, prop_value2)
{
    var object = control.FindChild(prop_name, prop_value, 10);
    var object2 = control.FindChild(prop_name2, prop_value2, 10);
    if ((!object.Exists)&&(!object2.Exists)) {
      Log["Message"](" pass");
    } else {
        Log["Error"]("failed");
    }
    
    
}

function file_verifyForSameSubString(strings, files)
{
    if (files.length === 0 || strings.length === 0)
        Log.Error("Both parameters should have element non-zero count")
        
    var content = []
    for (var i in files) {
        if (aqFile["Exists"](files[i]) !== true) {
            Log["Error"]("The file '" + files[i] + "'doesn't exists")
        } else {
            content.push(aqFile["ReadWholeTextFile"](files[i], aqFile["ctANSI"]))
        }
    }

    var search = ""
    for (var i in strings) {
        if (aqString["StrMatches"](strings[i], content[0])) {
            search = strings[i]
            break
        }
    }
    
    if (search === "") {
        Log["Error"]("Haven't found any strings in the file '" + files[0] + "'")
        return false
    } else {
        Log["Message"]("Have found '" + search + "' in the file '" + files[0] + "'")
    }
    
    for (var i = 1; i < content.length; i++) {
        if (aqString["StrMatches"](search, content[i]) === false) {
            Log["Error"]("Haven't found '" + search + "' in the file '" + files[i] + "'")            
        } else {
            Log["Message"]("Have found '" + search + "' in the file '" + files[i] + "'")
        }
    }
    
    return true
}