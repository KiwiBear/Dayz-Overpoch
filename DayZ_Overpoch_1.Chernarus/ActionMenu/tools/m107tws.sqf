//********************Upgrade M107 >> M107 TWS : 1x M107, 1x Lasermarker, 1x Laserbattery, 1x Obsidian and 100k humanity"***********************


_weaponsPlayer = weapons player; 
_itemsPlayer = items player;
_magazinesPlayer = magazines player;
_hasM107a = "m107" in _weaponsPlayer;            //Weapon
_hasM107b = "M107_DZ" in _weaponsPlayer;         //Alternative Weapon Version
_hasLaserM = "Laserdesignator" in _weaponsPlayer;      // Recipe lm
_hasLaserB = "Laserbatteries" in _magazinesPlayer;      // Recipe  batt
_hasObsidian = "ItemObsidian" in _magazinesPlayer;      // Recipe  gem
humanity 		= player getVariable['humanity',0]; //Get Humanity Player


if !((_hasM107a && _hasLaserM && _hasLaserB && _hasObsidian) or ( _hasM107b && _hasLaserM && _hasLaserB && _hasObsidian )) exitWith {cutText [format["You need 1x M107, 1x laser marker, 1x laser battery, 1x obsidian to upgrade from M107 to a M107 TWS ! The Upgrade will cost you 100000 humanity!"], "PLAIN DOWN"];};       //works
if (dayz_combat == 1) then { 
    cutText [format["You are in combat and cannot upgrade your weapon!!!"], "PLAIN DOWN"];
} else {
 
  
  if (humanity < 105000) then {  // Script needs to know if the player has enough humanity
  cutText [format["You haven't enough humanity!"], "PLAIN DOWN"];            // No Humanity to craft 
  sleep 6;
  cutText [format["You must have more than 105000 humanity to craft this weapon and still be a hero after the upgrade!"], "PLAIN DOWN"];    
  
  
  } else {          //player has 105k humanity !!!

  player setVariable ['humanity',(humanity-100000),true];
  player playActionNow "Medic";
	r_interrupt = false;
  _dis=10;                    //verschoben
	_sfx = "repair";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
  player removeWeapon "m107";
  player removeWeapon "M107_DZ";
	player removeWeapon "Laserdesignator";
	player removeMagazine "Laserbatteries";
  player removeMagazine "ItemObsidian";
  sleep 1;
  player addWeapon "m107_TWS_EP1_DZ";
  cutText [format["You successfully upgraded your M107 to a M107 TWS!"], "PLAIN DOWN"];
  sleep 3;
  
  };
  
 	sleep 6;
 	r_interrupt = false;
//	player switchMove "";
//	player playActionNow "stop";
	sleep 10;
};

//Written by blueTesla