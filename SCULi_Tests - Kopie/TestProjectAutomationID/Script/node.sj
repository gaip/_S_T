function IsNodeVisibleClient(Tree: TBaseVirtualTree; Node:PVirtualNode; Column:TColumnIndex=NoCloumn):Booolean;
begin
Result:= Tree.IsVisible[Node] and
Tree.GetDisplayRect(Node,Column,false).IntersectsWith(Tree.ClientRect);
end;
