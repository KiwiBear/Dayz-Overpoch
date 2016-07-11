 //Make Painkiller
_weaponsPlayer = weapons player; 
_itemsPlayer = items player;
_magazinesPlayer = magazines player;


_hasChem = "HandChemBlue"  in _magazinesPlayer;
_hasFlare = "HandRoadFlare" in _magazinesPlayer;


if !(_hasChem && _hasFlare) exitWith {cutText [format["You need blue chemlights and roadflares to manufacture painkillers!"], "PLAIN DOWN"];};
if (dayz_combat == 1) then { 
    cutText [format["You are in combat and cannot get comfortable to manufacture painkillers!"], "PLAIN DOWN"];
} else {
	player playActionNow "Medic";
	r_interrupt = false;
	player removeMagazine "HandChemBlue";
	player removeMagazine "HandRoadFlare";

  cutText [format["You are starting to combine the chems with the roadflare. Hopefully it will work!"], "PLAIN DOWN"];
  sleep 3;
  
 	_dis=10;
	_sfx = "bandage";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
  chemcondition = (1 + round(random 99));
	sleep 6;
	
  if (chemcondition < 30) then {cutText [format["Your painkillers broke into two pieces. You decided to discard the failed result !"], "PLAIN DOWN"];
  } else {
  
  player addMagazine "ItemPainkiller";
	sleep 3;
  cutText [format["You successfully manufactured painkillers. Science rocks!"], "PLAIN DOWN"];
  };
  
  	r_interrupt = false;
//	player switchMove "";
//	player playActionNow "stop";
	
	sleep 10;
	
};

//by blueTesla