function getTab(control, prop_name, prop_value, index)
{
  TabNumber = control.wTabCount;
  
      
  // Obtain tab captions and post them to the test log
  for (i = 0; i < TabNumber; i++){
     Log.Message(control.wTabCaption(index)) 
    
     
  }
  var object = control.WTabCaption(index);
    
   //object.Click();
}

function clickTab(control, tab)
{
    control.ClickTab(tab);
}

