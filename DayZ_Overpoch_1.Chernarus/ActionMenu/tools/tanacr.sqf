//*******************Upgrade ACR >> ACR TWS (Desert) : 1x ACR, 1x Lasermarker, 1x Laserbattery, 1x Obsidian and 15k humanity************************


_weaponsPlayer = weapons player; 
_itemsPlayer = items player;
_magazinesPlayer = magazines player;
_hasACR1w = "FHQ_ACR_TAN_IRN" in _weaponsPlayer;            //Weapon
_hasACR2w = "FHQ_ACR_TAN_IRN_F" in _weaponsPlayer;         //Alternative Weapon Version
_hasLaserM = "Laserdesignator" in _weaponsPlayer;      // Recipe lm
_hasLaserB = "Laserbatteries" in _magazinesPlayer;      // Recipe  batt
_hasObsidian = "ItemObsidian" in _magazinesPlayer;      // Recipe  gem
humanity 		= player getVariable['humanity',0]; //Get Humanity Player


if !((_hasACR1w && _hasLaserM && _hasLaserB && _hasObsidian) or ( _hasACR2w && _hasLaserM && _hasLaserB && _hasObsidian )) exitWith {cutText [format["You need 1x ACR (Desert), 1x Lasermarker, 1x Laserbattery, 1x Obsidian to upgrade from ACR (Desert) to ACR TWS (Desert) ! The Upgrade will cost you 15000 humanity!"], "PLAIN DOWN"];};       //works
if (dayz_combat == 1) then { 
    cutText [format["You are in combat and cannot upgrade your weapon!!!"], "PLAIN DOWN"];
} else {
 
  
  if (humanity < 20000) then {  // Script needs to know if the player has enough humanity
  cutText [format["You haven't enough humanity!"], "PLAIN DOWN"];            // No Humanity to craft 
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
  player removeWeapon "FHQ_ACR_TAN_IRN";
  player removeWeapon "FHQ_ACR_TAN_IRN_F";
	player removeWeapon "Laserdesignator";
	player removeMagazine "Laserbatteries";
  player removeMagazine "ItemObsidian";
  sleep 1;
  player addWeapon "FHQ_ACR_TAN_TWS_F";
  cutText [format["You successfully upgraded your ACR (Desert) to a ACR TWS (Desert)"], "PLAIN DOWN"];
  sleep 3;
  
  };
  
 	sleep 6;
 	r_interrupt = false;
//	player switchMove "";
//	player playActionNow "stop";
	sleep 10;
};

//Written by blueTesla