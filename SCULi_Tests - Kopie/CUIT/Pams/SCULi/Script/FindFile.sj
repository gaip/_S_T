function ListFiles()
 {
  var fso, folder, myEnum, f, FileName;

  fso = new ActiveXObject("Scripting.FileSystemObject"); // system.object
  folder = fso.GetFolder("C:\\Users\\lmbtuh0\\Desktop\\Louis Lantier"); // folder path
  myEnum = new Enumerator(folder.Files);  // nummering items
  // traverse
  for ( ; !myEnum.atEnd(); myEnum.moveNext())
  {
    f = myEnum.item();
    Log.Message(f.Name);
    
  }

  FileName = Project.ConfigPath + "Log\\MyResults.txt";
  Log.SaveResultsAs(f, 2);
 } 