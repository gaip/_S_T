function myItems()
{
var item = ["3086",	"3089",	"3090",	"3091",	"3092",	"3094",	"3096",	"3097",	"3105",	"3106",	"3107",	"3122",	"3125",	"3127",	"3144",	"3145",	"3146",	"3147"];
}



function countItem (control, prop_name, prop_value, myItems)
{
  //groupBox.btnLiuidRoles.ClickButton();
//  groupBox.PermissionsView.Click(276, 47);


  // Check the count of Secured Entities
  var items = control.FindChild(prop_name, prop_value, 50);   
  if (items.Count!= myItems.length)
  {
    Log.Error("The   Entity count does not match the list displayed  ("+myItems.length+" vs. "+items.Count+")");
  }else{
  Log.Message("The   Entity match the expected numbers: ("+myItems.length+" vs. "+items.Count+")");
  }


}


function verifyCountedItems (control, prop_mame, prop_value){
 //groupBox.btnLiuidRoles.ClickButton();
//  groupBox.PermissionsView.Click(276, 47);


  // Check the count of Secured Entities
var items = control.FindChild(prop_name, prop_value, 50);   
  if (items.Count!= myItems.length)
  {
    Log.Error("The   Entity count does not match the list displayed  ("+myItems.length+" vs. "+items.Count+")");
  }else{
  Log.Message("The   Entity match the expected numbers: ("+myItems.length+" vs. "+items.Count+")");
  }

  // Check that the SecureEntites are contained into the list shown into SCULi
  for(var i=0;i<items.Count;i++)
  {
    var founded = false;
    for(var j=0;j<myItems.Count;j++)
    {
      if (items()[i] == myItems.Item(j).Text)
      {
        founded = true;
        Log.Message(" Entity: "+Items()[i] + " found")
        j=myItems.Count;
      }
    }
    if (founded != true)
    {
      Log.Error("  Entity: "+Items()[i] + " not found")
    }
  }


}