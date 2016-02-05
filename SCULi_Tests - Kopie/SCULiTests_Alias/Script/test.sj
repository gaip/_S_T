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


function getChildObject(control, prop_name, prop_value)
{
    var result = control.FindChild(prop_name, prop_value, 50);
    return result;    
}

function getObjectPropertyValue(control, prop_get)
{
    return aqObject.GetPropertyValue(control, prop_get);    
}

function getChildObjectPropertyValue(control, prop_name, prop_value, prop_get)
{
    var result = control.FindChild(prop_name, prop_value, 50);
    return aqObject.GetPropertyValue(result, prop_get);    
}


function findError(control, prop_name, prop_value)
{
 // var itemsCounts = control.wItems.Count;
  //Log.Message(itemsCounts );
  var wait = 500;
  var object = control.FindAllChildren(prop_name, prop_value, 10);
  PropArray =(new VBArray(objects)).toArray();

   while (wait > 0) {

          
        if (object !== null && object.Exists === true) {
            Log["Message"]("The object with '" + prop_name + "' equal to '*" +
                     prop_value + "*' is found.");
                     
            
            break;
          }       
        
        wait -= 500;
        delay(500);
        
      }  
    if (object === null || object.Exists === false) {
      Log.Error("Could not find 'error'");    
    }
   }
 
function findChildObject(control, prop_name, prop_value)
{
var object; 
 
 

}
   
   
