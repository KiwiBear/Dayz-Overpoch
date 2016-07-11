//*******************Upgrade ACR >> ACR TWS (Winter) : 1x ACR, 1x Lasermarker, 1x Laserbattery, 1x Obsidian and 15k humanity************************


_weaponsPlayer = weapons player; 
_itemsPlayer = items player;
_magazinesPlayer = magazines player;
_hasACR1w = "FHQ_ACR_SNW_IRN" in _weaponsPlayer;            //Weapon
_hasACR2w = "FHQ_ACR_SNW_IRN_F" in _weaponsPlayer;         //Alternative Weapon Version
_hasLaserM = "Laserdesignator" in _weaponsPlayer;      // Recipe lm
_hasLaserB = "Laserbatteries" in _magazinesPlayer;      // Recipe  batt
_hasObsidian = "ItemObsidian" in _magazinesPlayer;      // Recipe  gem
humanity 		= player getVariable['humanity',0]; //Get Humanity Player


if !((_hasACR1w && _hasLaserM && _hasLaserB && _hasObsidian) or ( _hasACR2w && _hasLaserM && _hasLaserB && _hasObsidian )) exitWith {cutText [format["You need 1x ACR (Winter), 1x lasermarker, 1x laserbattery, 1x obsidian to upgrade from ACR (Winter) to ACR TWS (Winter) ! The upgrade is going to costs you 15000 humanity!"], "PLAIN DOWN"];};       //works
if (dayz_combat == 1) then { 
    cutText [format["You are in xombat and cannot upgrade a weapon!!!"], "PLAIN DOWN"];
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
  player removeWeapon "FHQ_ACR_SNW_IRN";
  player removeWeapon "FHQ_ACR_SNW_IRN_F";
	player removeWeapon "Laserdesignator";
	player removeMagazine "Laserbatteries";
  player removeMagazine "ItemObsidian";
  sleep 1;
  player addWeapon "FHQ_ACR_SNW_TWS_F";
  cutText [format["You successfully upgraded your ACR (Winter) to a ACR TWS (Winter)"], "PLAIN DOWN"];
  sleep 3;
  
  };
  
 	sleep 6;
 	r_interrupt = false;
//	player switchMove "";
//	player playActionNow "stop";
	sleep 10;
};

//Written by blueTesla