//Make Mophine

_weaponsPlayer = weapons player; 
_itemsPlayer = items player;
_magazinesPlayer = magazines player;


_hasChem = "HandChemGreen"  in _magazinesPlayer;
_hasFlare = "HandRoadFlare" in _magazinesPlayer;


if !(_hasChem && _hasFlare) exitWith {cutText [format["You need green chemlights and roadflares to manufacture morphine!"], "PLAIN DOWN"];};
if (dayz_combat == 1) then { 
    cutText [format["You are in combat and cannot get comfortable to manufacture morphine!"], "PLAIN DOWN"];
} else {
	player playActionNow "Medic";
	r_interrupt = false;
	player removeMagazine "HandChemGreen";
	player removeMagazine "HandRoadFlare";

  cutText [format["You are starting to combine the chems with the roadflare. Hopefully it will work!"], "PLAIN DOWN"];
  sleep 3;
  
 	_dis=10;
	_sfx = "bandage";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
  Bloodcondition = (1 + round(random 99));
	sleep 6;
	
  if (Bloodcondition < 30) then {cutText [format["Your morphine broke into two pieces. You decided to discard the failed result !"], "PLAIN DOWN"];
  } else {
  
  player addMagazine "ItemMorphine";
	sleep 3;
  cutText [format["You successfully manufactured morphine. Science rocks!"], "PLAIN DOWN"];
  };
  
  	r_interrupt = false;
//	player switchMove "";
//	player playActionNow "stop";
	
	sleep 10;
	
};

//by blueTesla