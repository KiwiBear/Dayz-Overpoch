//******************Upgrade AKS-74 >> AKS-74 Goshawk : 1x AKS-74, 1x Lasermarker, 1x Laserbattery, 1x Obsidian and 15k humanity************************


_weaponsPlayer = weapons player; 
_itemsPlayer = items player;
_magazinesPlayer = magazines player;
_hasAKS74 = "AKS_74" in _weaponsPlayer;            //Weapon
_hasVILAK = "vil_AKS_74" in _weaponsPlayer;         //Alternative Weapon Version
_hasLaserM = "Laserdesignator" in _weaponsPlayer;      // Recipe lm
_hasLaserB = "Laserbatteries" in _magazinesPlayer;      // Recipe  batt
_hasObsidian = "ItemObsidian" in _magazinesPlayer;      // Recipe  gem
humanity 		= player getVariable['humanity',0]; //Get Humanity Player


if !((_hasAKS74 && _hasLaserM && _hasLaserB && _hasObsidian) or ( _hasVILAK && _hasLaserM && _hasLaserB && _hasObsidian )) exitWith {cutText [format["You need 1x AKS-74, 1x Lasermarker, 1x Laserbattery, 1x Obsidian to upgrade from AKS-74 to AKS-74 GOSHAWK ! The Upgrade is going to costs you 15000 humanity!"], "PLAIN DOWN"];};       //works
if (dayz_combat == 1) then { 
    cutText [format["You are in combat and cannot upgrade your weapon!!!"], "PLAIN DOWN"];
} else {
 
  
  if (humanity < 20000) then {  // Script needs to know if the player has enough humanity
  cutText [format["You don't have enough humanity!"], "PLAIN DOWN"];            // No Humanity to craft 
  sleep 6;
  cutText [format["You must have more than 20000 humanity to craft this weapon and still be a hero after the upgrade!"], "PLAIN DOWN"];    
  
  
  } else {          //player has 20k humanity !!!

  player setVariable ['humanity',(humanity-15000),true];
  player playActionNow "Medic";
	r_interrupt = false;
  _dis=10;                    //verschoben
	_sfx = "repair";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
  player removeWeapon "AKS_74";
  player removeWeapon "vil_AKS_74";
	player removeWeapon "Laserdesignator";
	player removeMagazine "Laserbatteries";
  player removeMagazine "ItemObsidian";
  sleep 1;
  player addWeapon "AKS_74_GOSHAWK";
  cutText [format["You successfully upgraded your AKS-74 to a AKS-74 GOSHAWK"], "PLAIN DOWN"];
  sleep 3;
  
  };
  
 	sleep 6;
 	r_interrupt = false;
//	player switchMove "";
//	player playActionNow "stop";
	sleep 10;
};

//Written by blueTesla