[]spawn
{
wardrobe = -1;
private["_veh"];

while {(alive player)} do
{
	if (wardrobe == -1) then
	{
		wardrobe = (vehicle player) addaction [("<t size='1' font='Zeppelin33Italic' shadow='1' shadowColor='#000000' color=""#00a6ff"">" + ("FatCat's") +"</t> <t size='1' font='Zeppelin33Italic' shadow='1' shadowColor='#000000' color=""#bababa"">" + ("Action Menu") +"</t>"),"actionmenu\actionmenu_execute.sqf","",5,false,true,"",""];
		_veh = vehicle player;
	};
	if (_veh != vehicle player) then
	{
		_veh removeAction wardrobe;
		wardrobe = -1;      
	};
	Sleep 2;
};
};
