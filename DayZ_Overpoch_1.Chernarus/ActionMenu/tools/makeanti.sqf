//Make Antibiotics


_weaponsPlayer = weapons player; 
_itemsPlayer = items player;
_magazinesPlayer = magazines player;


_hasChem = "HandChemRed"  in _magazinesPlayer;
_hasPainkiller = "ItemPainkiller" in _magazinesPlayer;


if !(_hasChem && _hasPainkiller) exitWith {cutText [format["You need red chemlights and painkillers to manufacture antibiotics!"], "PLAIN DOWN"];};
if (dayz_combat == 1) then { 
    cutText [format["You are in combat and cannot get comfortable to create antibiotics!"], "PLAIN DOWN"];
} else {
	player playActionNow "Medic";
	r_interrupt = false;
	player removeMagazine "HandChemRed";
	player removeMagazine "ItemPainkiller";

  cutText [format["You are starting to combine the chems with painkillers. Hopefully it will work!"], "PLAIN DOWN"];
  sleep 3;
  
 	_dis=10;
	_sfx = "bandage";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
  chemcondition = (1 + round(random 99));
	sleep 6;
	
  if (chemcondition < 30) then {cutText [format["Your Antibiotics broke into two pieces. You decided to discard the failed result!"], "PLAIN DOWN"];
  } else {
  
  player addMagazine "ItemAntibiotic";
	sleep 3;
  cutText [format["You successfully manufactured antibiotics. Science rocks!"], "PLAIN DOWN"];
  };
  
  	r_interrupt = false;
//	player switchMove "";
//	player playActionNow "stop";
	
	sleep 10;
	
};

//by blueTesla