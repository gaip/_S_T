/* This function search child object by property specified and clicks on it */

function clickOnChildObject(control, prop_name, prop_value)
{
    // here we need wait that is that problem
 

    var object = control.FindChild(prop_name, prop_value, 50);    
   
    if (object.Exists) {
      object.Click();
      
    } else {
      Log["Error"]("The object doesn't exists")
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
    var result = control.FindChild(prop_name, prop_value, 50);
    return result;    
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

/* This function search child object by property specified and types on it */

function keysOnChildObject(control, prop_name, prop_value, keys)
{
    var object = control.FindChild(prop_name, prop_value, 90);    
    if (object.Exists) {
      object.Keys(keys);
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

/* This function searches region in object */

function findRegion(control, region_name)
{
    if (Regions.FindRegion(region_name, control) !== null) {
      Log["Message"]("The region '" + region_name + "' is found");
    } else {
      Log["Error"]("The region '" + region_name + "' is NOT found");
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

function verifyObjectPropertyValue2(control, prop_name, prop_value, prop_name2, prop_name2_value)
{
    var current_value
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
function verifyVisibleObject(control, text)
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

/* Verifies the text matches through OCR technique */

function verifyTextMatches(control, text)
{
  var object = OCR["CreateObject"](control);
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
                    Log["Message"]("The object with '" + prop_name + "' equal to '" +
                     current_value + "' is found");
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
        wait -= 500;
        delay(500);
    }
    
    if (object !== null && object.Exists === true) {
      Log["Message"]("The object with '" + prop_name + "' equal to '" +
        prop_value + "' is found");    
    } else {
      Log["Error"]("The object with '" + prop_name + "' equal to '" +
        prop_value + "' is NOT found");
    }
}