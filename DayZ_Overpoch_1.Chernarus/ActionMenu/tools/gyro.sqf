_itemsPlayer = items player;
_magazinesPlayer = magazines player;
_hasToolbox = 	"ItemToolbox" in _itemsPlayer;
_hasEngine =	"PartEngine" in _magazinesPlayer;
_hasMainRotor =	"PartVRotor" in _magazinesPlayer;
if !(_hasToolbox && _hasEngine && _hasMainRotor) exitWith {cutText [format["You need a Main Rotor Assembly, Engine parts, and a Tool box to create a Gyrocopter"], "PLAIN DOWN"];};
if (dayz_combat == 1) then { 
    cutText [format["You are in combat and cannot build a GyroCopter."], "PLAIN DOWN"];
} else {
	player playActionNow "Medic";
	r_interrupt = false;
	player removeMagazine "PartVRotor";
	player removeMagazine "PartEngine";
	player removeWeapon "ItemToolbox";
	_dis=10;
	_sfx = "repair";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
	
	sleep 6;
	
	_object = "CSJ_GyroC" createVehicle (position player);
	_object setVariable ["MalSar",1,true];
	
	_object attachto [player,[0.0,3.0,2.5]];
	_object setfuel 0.5;
	sleep 3;
	detach _object;
	player reveal _object;

	cutText [format["You've made a gyrocopter!"], "PLAIN DOWN"];
	
	r_interrupt = false;
	player switchMove "";
	player playActionNow "stop";
	
	sleep 10;
	
	cutText [format["Warning: Spawned GyroCopters DO NOT SAVE after server restart!"], "PLAIN DOWN"];
	
};