/* Verifies the file exists*/
function dateiExist(file) {
  if (aqFile.Exists(file)) {
    Log.Message("The file '" + file + "' exists")
  } else {
    Log.Message("The file '" + file + "' does NOT exist")
  }
}