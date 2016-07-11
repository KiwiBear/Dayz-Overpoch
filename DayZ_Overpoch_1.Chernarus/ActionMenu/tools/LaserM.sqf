//Craft Lasermarker

_weaponsPlayer = weapons player; 
_itemsPlayer = items player;
_magazinesPlayer = magazines player;
_hasEmerald = 	"ItemEmerald" in _magazinesPlayer;
_hasRuby =	"ItemRuby" in _magazinesPlayer;
_hasLight = "ItemLightBulb" in _magazinesPlayer;
_hasVector = "Binocular_Vector" in _weaponsPlayer;

if !(_hasEmerald && _hasRuby && _hasLight && _hasVector) exitWith {cutText [format["You need a emerald, a ruby, one light bulb and a rangefinder to craft a lasermarker!"], "PLAIN DOWN"];};
if (dayz_combat == 1) then { 
    cutText [format["You are in combat!"], "PLAIN DOWN"];
} else {
	player playActionNow "Medic";
	r_interrupt = false;
	player removeMagazine "ItemEmerald";
	player removeMagazine "ItemRuby";
  player removeMagazine "ItemLightBulb";
	player removeWeapon "Binocular_Vector";
  


	_dis=10;
	_sfx = "repair";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;

	sleep 6;
	
player addWeapon "Laserdesignator";
	sleep 3;


	cutText [format["You crafted a lasermarker"], "PLAIN DOWN"];
	
	r_interrupt = false;
//	player switchMove "";
//	player playActionNow "stop";
	
	sleep 10;
	

	
};

//by blueTesla