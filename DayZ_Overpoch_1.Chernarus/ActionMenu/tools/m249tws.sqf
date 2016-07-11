//********************Upgrade M249 >> M249 TWS : 1x M249, 1x Lasermarker, 1x Laserbattery, 1x Obsidian and 20k humanity"***********************


_weaponsPlayer = weapons player; 
_itemsPlayer = items player;
_magazinesPlayer = magazines player;
_hasMG1 = "M249_EP1_DZ" in _weaponsPlayer;            //Weapon
_hasMG2 = "M249_m145_EP1_DZE" in _weaponsPlayer;         //Alternative Weapon Version
_hasLaserM = "Laserdesignator" in _weaponsPlayer;      // Recipe lm
_hasLaserB = "Laserbatteries" in _magazinesPlayer;      // Recipe  batt
_hasObsidian = "ItemObsidian" in _magazinesPlayer;      // Recipe  gem
humanity 		= player getVariable['humanity',0]; //Get Humanity Player


if !((_hasMG1 && _hasLaserM && _hasLaserB && _hasObsidian) or ( _hasMG2 && _hasLaserM && _hasLaserB && _hasObsidian )) exitWith {cutText [format["You need 1x M249 M145 OR 1x M249 SAW, 1x Lasermarker, 1x Laserbattery, 1x Obsidian to upgrade from M249 to M249 TWS ! The Upgrade will cost you 20000 humanity!"], "PLAIN DOWN"];};       //works
if (dayz_combat == 1) then { 
    cutText [format["You are in combat and cannot upgrade a weapon!!!"], "PLAIN DOWN"];
} else {
 
  
  if (humanity < 25000) then {  // Script needs to know if the player has enough humanity
  cutText [format["You haven't enough humanity!"], "PLAIN DOWN"];            // No Humanity to craft 
  sleep 6;
  cutText [format["You must have more than 25000 humanity to craft this weapon and still be a hero after the upgrade!"], "PLAIN DOWN"];    
  
  
  } else {          //player has 25k humanity !!!

  player setVariable ['humanity',(humanity-20000),true];
  player playActionNow "Medic";
	r_interrupt = false;
  _dis=10;                    //verschoben
	_sfx = "repair";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
  player removeWeapon "M249_EP1_DZ";
  player removeWeapon "M249_m145_EP1_DZE";
	player removeWeapon "Laserdesignator";
	player removeMagazine "Laserbatteries";
  player removeMagazine "ItemObsidian";
  sleep 1;
  player addWeapon "M249_TWS_EP1";
  cutText [format["You successfully upgraded your M249 to a M249 TWS"], "PLAIN DOWN"];
  sleep 3;
  
  };
  
 	sleep 6;
  cutText [format["Information: The M249 TWS needs 1 Weaponslot and 1 Backpackslot to carry it!"], "PLAIN DOWN"];
 	r_interrupt = false;
//	player switchMove "";
//	player playActionNow "stop";
	sleep 10;
};

//Written by blueTesla