//Craft Laserbattery


_itemsPlayer = items player;
_magazinesPlayer = magazines player;
_hasTin = 	"ItemTinBar" in _magazinesPlayer;
_hasCopper =	"ItemCopperBar10oz" in _magazinesPlayer;

if !(_hasTin && _hasCopper) exitWith {cutText [format["You need a tin bar and a 10oz copper bar to craft a Laserbattery."], "PLAIN DOWN"];};
if (dayz_combat == 1) then { 
    cutText [format["You are in combat!"], "PLAIN DOWN"];
} else {
	player playActionNow "Medic";
	r_interrupt = false;
	player removeMagazine "ItemTinBar";
	player removeMagazine "ItemCopperBar10oz";


	_dis=10;
	_sfx = "repair";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;

	sleep 6;
	
player addMagazine "Laserbatteries";
	sleep 3;


	cutText [format["You crafted a lasermarker battery."], "PLAIN DOWN"];
	
	r_interrupt = false;
//	player switchMove "";
//	player playActionNow "stop";
	
	sleep 10;
	

	
};

//by blueTesla