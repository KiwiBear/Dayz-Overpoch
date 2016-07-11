//Craft BloodBag

_weaponsPlayer = weapons player; 
_itemsPlayer = items player;
_magazinesPlayer = magazines player;
_hasZombieparts = "ItemZombieParts" in _magazinesPlayer;
_hasFilter = "ItemCanvas" in _magazinesPlayer;


if !(_hasZombieparts && _hasFilter) exitWith {cutText [format["You need zombie parts and a canvas to synthesize blood!"], "PLAIN DOWN"];};
if (dayz_combat == 1) then { 
    cutText [format["You are in combat and cannot get comfortable to synthesize blood!"], "PLAIN DOWN"];
} else {
	player playActionNow "Medic";
	r_interrupt = false;
	player removeMagazine "ItemZombieParts";
	player removeMagazine "ItemCanvas";

  cutText [format["You are starting to leach zombieblood through a canvas filter. Hopefully it will work!"], "PLAIN DOWN"];
  sleep 3;
  
 	_dis=10;
	_sfx = "fillwater";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
  Bloodcondition = (1 + round(random 99));
	sleep 6;
	
  if (Bloodcondition < 30) then {
  cutText [format["The synthesized blood smells really bad and don't look healthy. You decided to discard the failed Bloodbag "], "PLAIN DOWN"];
  } else {
  
  player addMagazine "ItemBloodbag";
	sleep 3;
  cutText [format["You successfully synthesized a bloodbag. Science rocks!"], "PLAIN DOWN"];
  };
  
  	r_interrupt = false;
//	player switchMove "";
//	player playActionNow "stop";
	
	sleep 10;
	
};

//by blueTesla