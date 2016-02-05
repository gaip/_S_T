//USEUNIT util

/* This function search child object by property specified and clicks on it */

function clickOnChildObject(control, prop_name, prop_value)
{
    // here we need wait that is that problem
 
   var object = getChildObject(control, prop_name, prop_value);   
   wait = 30000; 
   var find = null;   
    while (wait > 0) {
        object = control.FindChild(prop_name, prop_value, 15);
        if (object !== null && object.Exists === true) {
            break;
        }
        wait -= 500;
        delay(500);
   }
   
   if (object.Exists) {
      object.Click();
     
    } else {
      Log.Error("The child object of '" + control.FullName + 
        "'doesn't exists with property name '" +
        prop_name + "' equal to " + prop_value + "'");
       
    }
 

}

function clickOnChildObjectInAMinute(control, prop_name, prop_value)
{
    // here we need wait that is that problem
    var delay = 1000;
    for (var i = 60000; i > 0;) {
      var object = control.FindChild(prop_name, prop_value, 15);
    
      if (object.Exists) {
        object.Click();
        break;
      } else if (i <= delay) {
        Log["Error"]("The object doesn't exists");
        break;
      } else {
        Delay(delay);
        i -= delay;
      }
    }
}


function clickOnChildObjects(control, prop_name, prop_value)
{
    // here we need wait that is that problem
    var objects = control.FindAllChildren(prop_name, prop_value, 50);
    objects = (new VBArray(objects)).toArray();
    
    for (var i = 0; i < objects.length; i++) {
        objects[i].Click();
    }

}

function try_clickOnChildObject(control, prop_name, prop_value)
{
    // here we need wait that is that problem
 
    var object = control.FindChild(prop_name, prop_value, 50);    
   
    if (object.Exists) {
      object.Click();
      
    }
}

function clickOnObject(control)
{
    control.Click();
}

function clickOnObject2(control, clientX, clientY, shift)
{
    control.Click(clientX, clientY, shift);
}

function keysOnObject(control, keys)
{
    control.Keys(keys);
}

function getChildObject(control, prop_name, prop_value)
{
    var object = null, wait = 30000;   
    while (wait > 0) {
        object = control.FindChild(prop_name, prop_value, 15);
        if (object !== null && object.Exists === true) {
            break;
        }
        wait -= 500;
        delay(500);
    }
    
    return object;    
}
// control, prop_name, prop_value, prop_get (mapped name, automationId, automationID, prop to get 

function getChildObjectPropertyValue(control, prop_name, prop_value, prop_get)
{
    var result = control.FindChild(prop_name, prop_value, 50);
        Log["Message"]("The object with '" + prop_name + "' equal to '" +
        prop_value + prop_get +"' is found");
    return (result, prop_get); 
}

function getChildObjectPropertyValue2(control, prop_name, prop_value, prop_get)
{
    var result = control.FindChild(prop_name, prop_value, 50);
        Log["Message"]("The object with '" + prop_name + "' equal to '" +
        prop_value + prop_get +"' is found");
    
    var result2= aqObject.GetPropertyValue(result, prop_get);    
    Log["Message"]("The object has '" + result2 + "' text");
    return result2; 
}


function callChildObjectMethod(control, prop_name, prop_value, method)
{
    var result = control.FindChild(prop_name, prop_value, 50);
    return aqObject.CallMethod(result, method);    
}

/* This function search child object by property specified and DOUBLE clicks on it */

function DoubleclickOnChildObject(control, prop_name, prop_value)
{
    var object = control.FindChild(prop_name, prop_value, 10);    
    if (object.Exists) {
      object.DblClick(prop_name);
    } else {
      Log["Error"]("The object doesn't exists")
    }
}

/* This function search child object by property specified and clicks on it 
with control key specified */

function clickOnChildObjectShift(control, prop_name, prop_value, shift_value)
{
    var object = control.FindChild(prop_name, prop_value, 10);    
    if (object.Exists) {
      object.Click(-1, -1, shift_value);
    } else {
      Log["Error"]("The object doesn't exists")
    }
}

/* This function search child object by property specified and double clicks on it */
function doubleClickOnChildObject(control, prop_name, prop_value)
{
    var object = control.FindChild(prop_name, prop_value, 50);    
    if (object.Exists) {
      object.DblClick();
    } else {
      Log["Error"]("The object doesn't exists")
    }
}

/* This function search child object by property specified and clicks right on it */

function clickROnChildObject(control, prop_name, prop_value)
{
    var object = control.FindChild(prop_name, prop_value, 50);    
    if (object.Exists) {
      object.ClickR();
    } else {
      Log["Error"]("The object doesn't exists")
    }
}

/* This function search children objects by property specified and returns amount of it*/

function getChildrenObjectCount(control, prop_name, prop_value)
{
    var objects = control.FindAllChildren(prop_name, prop_value, 10);
    objects = (new VBArray(objects)).toArray();
    return objects.length;  
}

/* This function search children objects by property specified and returns amount of it*/

function getChildrenObjectCountOnSameTop(control, prop_name, prop_value)
{
    var values = prop_value.split(" ");
    var objects = control.FindAllChildren("Text", "*" + values[0] + "*");
    objects = (new VBArray(objects)).toArray();
    var ret = 0;
    
    for (var i = 0; i < objects.length; i++) {
      var props = [];
      props[0] = prop_name;
      props[1] = "Top";
      var object;
      for (var k = 1; k < values.length; k++) {
        var vals = [];
        vals[0] = "*" + values[k] + "*";
        vals[1] = objects[i].Top;
        object = control.FindChild(props, vals);
        if (!object.Exists) break;
      }
      if (object.Exists) ret++;
    }
    
    return ret;  
}

/* This function search child object by property specified and types on it */

function keysOnChildObject(control, prop_name, prop_value, keys)
{
    var object = control.FindChild(prop_name, prop_value, 15);    
    if (object.Exists) {
      object.Keys(keys);
    } else {
      Log.Error("The child object of '" + control.FullName + 
        "'doesn't exists with property name '" +
        prop_name + "' equal to " + prop_value + "'");
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

/* This function search child object by property specified  delivers a "True" while it is available */
function findChildObjectWithReturn(control, prop_name, prop_value)
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


/* This function searches region in object */

function findRegion(control, region_name)
{
    if (Regions.FindRegion(region_name, control) !== null) {
      Log["Message"]("The region '" + region_name + "' is found");
    } else {
      Log["Error"]("The region '" + region_name + "' is NOT found");
    }
}

/* This function searches region in object and reverse the result */

function findRegionNot(control, region_name)
{
    if (Regions.FindRegion(region_name, control) !== null) {
      Log["Error"]("The region '" + region_name + "' is found");
    } else {
      Log["Message"]("The region '" + region_name + "' is NOT found");
    }
}

/* This function left clicks region in object */

function clickRegion(control, region_name)
{
    var rect = Regions.FindRegion(region_name, control) 
    if (rect !== null) {
      control.Click(rect["Left"], rect["Top"])     
    } else {
      Log["Error"]("The region '" + region_name + "' is NOT found");
    }
}

/* This function right clicks region in object */

function clickRRegion(control, region_name)
{
    var rect = Regions.FindRegion(region_name, control) 
    if (rect !== null) {
      control.ClickR(rect["Left"], rect["Top"])     
    } else {
      Log["Error"]("The region '" + region_name + "' is NOT found");
    }
}

/* This function search child object by FullName  and clicks on it */
function ClickOnObjectUseFullName(control)
{
// var object = control.FindChild(prop_name, prop_value, 50); 
  var object = control;
    if (object.Exists)
    {
      object.Click();
    }else {
      Log["Error"]("The control '" + control + "' is NOT found");
    }

}

// object find and click
function ClickOnObjectFound(control)
{
// var object = control.FindChild(prop_name, prop_value, 50); 
  var object = control;
    if (object.Visible)
    {
      object.Click();
    }else {
      Log["Error"]("The control '" + control + "' is NOT found");
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

function clickOnObjectWithShift(control, shift_value)
{
//prop_name
  var object = control
  if (object.Exists) {
    object.Click(-1, -1, shift_value);
    Log["Message"]("found");
  }
}
/* currently not needed, is not clear where is used and the code needs rework
function verifyObjectPropertyValue2(control, prop_name, prop_value, prop_name2, prop_name2_value)
{
    var current_value=null;
    var object = control.FindChild(prop_name2, prop_name2_value, 10);    
    Log.Message(prop_name2+" "+prop_name2_value);
    
    if (aqObject.IsSupported(control, prop_name2)) {
      current_value = aqObject.GetPropertyValue(control, prop_name2)
    }
    if (current_value === prop_name2_value) {
      Log["Message"]("The object with '" + prop_name + "' equal to '" +
        prop_value + "' is found");
    } else {
      Log["Error"]("The object with '" + prop_name + "' equal to '" +
        prop_value + "' is NOT found");
    }
}
*/

/* search object and verify value*/

function verifyObjectPropertyValue(control, prop_name, prop_value)
{
    var current_value = null;
    var object = control.FindChild(prop_name, prop_value, 20);    
    if (aqObject.IsSupported(control, prop_name)) {
      current_value = aqObject.GetPropertyValue(control, prop_name)
    }
    if (current_value === prop_value) {
      Log["Message"]("The object with '" + prop_name + "' equal to '" +
        prop_value + "' is found");
    } else {
      Log["Error"]("The object with '" + prop_name + "' equal to '" +
        prop_value + "' is NOT found");
    }
}



function verifyObjectText_OCR(control, text)
{
    var ocr = OCR["CreateObject"](control)
    var str = ocr["GetText"]()
    
}

// the function proofs if a given Control is shown / existing while connected to ECU
function VerifyControl(control, controlName, caption)
{
  
  var object = control.FindChild(controlName, caption, 30);    
  if (object.Exists)
   {
    Log.Message(caption+" plugin open " + caption );
  } else {
    Log.Error(caption+" not  " + caption + " found ");
  }  
}

// click on x and y
function clickOnMouse(x, y) {

var coorX = x;
var coorY = y;
  
  // Specifies a delay in milliseconds
  var sDelay = 300; // 2 seconds
  
  // Simulates pressing the left mouse button
  LLPlayer.MouseDown(MK_LBUTTON, coorX, coorY, sDelay);
  // ...
  // Simulates releasing the left mouse button
  LLPlayer.MouseUp(MK_LBUTTON, coorX, coorY, sDelay); 
}

/* This function verify is object diesabled or no by FullName */
function verifyThatObjectNotVisibleObject(control, text)
{
//Exists
    var button = control
    if (button.VisibleOnScreen) {      
      Log["Error"]("The object with '" + control + "' equal to '" +
        text + "' is visible");
    } else {
      Log["Message"]("The object with '" + control + "' equal to '" +
        text + "' is NOT visible");
    }
}

/* This function verify is object enabled or visible on scren */
function verifyObjectVisibleObject(control, text)
{
//Exists
    var button = control
 
    if (button.VisibleOnScreen) {      
      Log["Message"]("The object with '" + control + "' equal to '" +
        text + "' is visible");
    } else {
      Log["Error"]("The object with '" + control + "' equal to '" +
        text + "' is NOT visible");
    }
}

/* Verifies the text matches through OCR technique */

function verifyTextMatches(control, text)
{
  var object = OCR.CreateObject(control);
  var options = object.CreateOptions()
  options.ExactSearch = false;
  var found = object.FindRectByText(text, options);
  
  if (found) {      
      Log["Message"]("The object has '" + text + "' text");
  } else {
      Log["Error"]("The object doesn't have '" + text + "' text");
  }
}

function waitObjectPropertyValue(control, prop_name, prop_value, wait)
{
    var current_value;
    var found = false;   
    while (wait > 0) {
        if (control.Exists) {
            if (aqObject.IsSupported(control, prop_name)) {
                current_value = aqObject.GetPropertyValue(control, prop_name)
            }
            if (typeof(prop_value) === "string") {
                if (aqString.StrMatches(prop_value, current_value) === true) {
                    Log["Message"]("The object with '" + prop_name + "' equal to '*" +
                     prop_value + "*' is found");
                    found = true;
                    break;
                }
            } else if (current_value === prop_value) {
                Log["Message"]("The object with '" + prop_name + "' equal to '" +
                     prop_value + "' is found");
                found = true;
                break;
            }
        }
        wait -= 500;
        delay(500);
    }
    
    if (found === false) {
      Log["Error"]("The object with '" + prop_name + "' equal to '" +
        prop_value + "' is NOT found");
    }
}

function waitChildObject(control, prop_name, prop_value, wait)
{
    var object = null;   
    while (wait > 0) {
        var object = getChildObject(control, prop_name, prop_value);
        if (object !== null && object.Exists === true) {
            break;
        }
        wait -= 30000;
    }
    
    if (object !== null && object.Exists === true) {
      Log["Message"]("The object with '" + prop_name + "' equal to '" +
        prop_value + "' is found");    
    } else {
      Log["Error"]("The object with '" + prop_name + "' equal to '" +
        prop_value + "' is NOT found");
    }
}

function dragObjectToObject(parent, from, to)
{
  var pf = from.WindowToScreen(1,1);
  var pt = to.WindowToScreen(1,1);
  var distX = pt.X - pf.X;
  var distY = pt.Y - pf.Y;
  
  pf = parent.ScreenToWindow(pf.X, pf.Y);
  parent.Drag(pf.X, pf.Y, distX, distY); 
}

function scrollVertical(control, pos)
{
  control.ScrollVertical(pos)
}


function waitForVisible(timeout, object, errorMessage) {
  //Variable to hold the total time we are waiting
  var totalWaitTimeout = 0;
  //Until specified object exists
  while (object.VisibleOnScreen !== true) {
    //Delays the test execution for the specified time period.
    Delay(10000);
    //Recalculate the total time we are waiting
    totalWaitTimeout = totalWaitTimeout + 10000 + Options.Run.Timeout;

    if (totalWaitTimeout > timeout) {
      Log.Error(errorMessage, "");
      break;
    }
  }
} 

function waitForObjectToAppear(timeout, object, errorMessage) {
  //Variable to hold the total time we are waiting
  var totalWaitTimeout = 0;
  //Until specified object exists
  while (!aqObject.IsSupported(object, "Exists") || !aqObject.IsSupported(object, "VisibleOnScreen") 
          || object.Exists !== true || object.VisibleOnScreen !== true) {
    //Delays the test execution for the specified time period.
    Delay(10000);
    //Recalculate the total time we are waiting
    totalWaitTimeout = totalWaitTimeout + 10000 + Options.Run.Timeout;

    if (totalWaitTimeout > timeout) {
      Log.Error(errorMessage, "");
      break;
    }
  } 
}