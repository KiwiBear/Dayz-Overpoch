_itemsPlayer = items player;
_hasToolbox = 	"ItemToolbox" in _itemsPlayer;
if !(_hasToolbox) exitWith {cutText [format["You need a tool box to create a bike"], "PLAIN DOWN"];};
if (dayz_combat == 1) then { 
    cutText [format["You are in combat and cannot build a bike."], "PLAIN DOWN"];
} else {
	player removeAction s_player_deploybike;    //
	
  player playActionNow "gestureFreeze";    //
  sleep 1;    //
  player playActionNow "medic";             //
  
	r_interrupt = false;
	player removeWeapon "ItemToolbox";
	_dis=10;
	_sfx = "repair";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
	

	
	_object = "Old_bike_TK_CIV_EP1" createVehicle (position player);
	_object setVariable ["MalSar",1,true];	
	_object attachto [player,[0.0,2.0,1]];
	sleep 3;
	

	cutText [format["You've used your toolbox to build a bike."], "PLAIN DOWN"];
  
  player playMoveNow "AmovPercMstpSnonWnonDnon_carCheckWheel";      //
  sleep 12;                                                         //
  detach _object;                                                     //
	player reveal _object;                                                //
  _object lock true;                                                      //
  sleep 10;                                                                  //
  _object lock false;                                                         //
  
	r_interrupt = false;
//	player switchMove "";
//	player playActionNow "stop";
	
	sleep 10;
	
	cutText [format["Warning: Spawned Bikes DO NOT SAVE after server restart!"], "PLAIN DOWN"];
	
};