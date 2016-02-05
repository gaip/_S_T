/* This function search child object by property specified and clicks on it */

function clickOnChildObject(control, prop_name, prop_value)
{
    var object = control.FindChild(prop_name, prop_value, 10);    if (object.Exists) {
      object.Click();
    } else {
      Log["Error"]("The object doesn't exists")
    }
}

/* This function search child object by property specified  delivers a "True" while it is available */

function findChildObject(control, prop_name, prop_value)
{
    var object = control.FindChild(prop_name, prop_value, 10);
    if (object.Exists) {
      Log["Message"]("The object with '" + prop_name + "' equal to '" +
        prop_value + "' is found");
    } else {
      Log["Error"]("The object with '" + prop_name + "' equal to '" +
        prop_value + "' is NOT found");
    }
}

/* This function search child object by property specified and press keys on it */

function keysOnChildObject(control, prop_name, prop_value, keys)
{
    var object = control.FindChild(prop_name, prop_value, 10);
    if (object.Exists) {
      object.Keys(keys);
    }
}

/* This function searches region in object */

function findRegion(control, region_name)
{
    if (Regions.FindRegion(region_name, control) !== null) {
      Log["Message"]("The region '" + region_name + "' is found");
    } else {
      Log["Error"]("The region '" + region_name + "' is NOT found");
    }
}

/* This function search child object by FullName  and clicks on it */
function ClickOnObjectUseFullName(control)
{
  var object = control;
    if (object.Exists)
    {
      object.Click();
    }

}

/* This function search child object by FullName  and clicks on it by right button */
function ClickOnObjectRBUseFullName(control)
{
  var object = control;
    if (object.Exists)
    {
      object.ClickR();
    }

}

/* This function search child object by property specified delivers a "True" while it is NOT available */

function findChildObjectNot(control, prop_name, prop_value)
{
    var object = control.FindChild(prop_name, prop_value, 10);
    if (!object.Exists) {
      Log["Message"]("The object with '" + prop_name + "' equal to '" +
        prop_value + "' NOT found");
    } else {
      Log["Error"]("The object with '" + prop_name + "' equal to '" +
        prop_value + "' is  found");
    }
}

/* This function search child object by property specified and clicks on it by Right mouse button  */

function clickOnChildObjectByRightMB(control,prop_name, prop_value)
{
//prop_name
    var object = control.FindChild(prop_name, 10);
    if (object.Exists) {
      object.ClickR();
      Log["Message"]("found");
    }
}

/* Verifies the file exists*/
function dateiExist(file) {
  if (aqFile.Exists(file)) {
    Log.Message("The file '" + file + "' exists")
  } else {
    Log.Message("The file '" + file + "' does NOT exist")
  }
}