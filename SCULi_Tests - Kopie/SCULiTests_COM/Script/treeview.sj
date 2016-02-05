/* Clicks on treeview item of TTreeView Delphi class object */



function treeview_clickItem(control, item)
{
  control.ClickItem(item);
}

function treeview_clickItemR(control, item)
{
  control.ClickItemR(item);
}

function treeview_selectItem(control, item)
{
  control.SelectItem(item);
}

function treeview_expandItem(control, item)
{
  control.ExpandItem(item);
}

function treeview_getItemCount(control)
{
// where is control ? 
  return control.wItems.Count;
}

// double click treeview item of TTreeView
function treeview_DoubleClickItem(control, item)
{
  control.DblClickItem(item);
}

// verifies does the item has right value

function treeview_verifyItemValueLive(control, value)
{
  var obj1 = control.FindChild("Text", value)
  if (!obj1.Exists) {
    Log["Error"]("There is no value matched to'" + value + "'")
    return;
  }
  var objVal1 = obj1.Text
  
  Delay(5000)
  
  var obj2 = control.FindChild("Text", value)
  if (!obj2.Exists) {
    Log["Error"]("There is no value matched to'" + value + "'")
    return;
  }
  var objVal2 = obj2.Text
  // if not,if equal faile
  win
  if (aqString["Compare"](objVal1, objVal2, true) !== 0) {
    Log["Message"]("Value is changed from '" + objVal1 + "' to'" + objVal2 + "'")
  } else {
    Log["Error"]("Value is NOT changed from '" + objVal1 + "'")
  }
}