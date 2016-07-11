// Craft Large Backpack      needs fix!Analyze gear backpack only in arma 3 possible  (UPDATE USED EPOCH DATA LOGS TO ANALYZE LOOT)

_weaponsPlayer = weapons player; 
_itemsPlayer = items player;
_magazinesPlayer = magazines player;

_hasitemcombo = [["ItemCanvas",4], ["ItemBurlap",4]] call player_checkItems;
_hasknife = "ItemKnife" in _itemsPlayer;


if !(_hasitemcombo && _hasknife) exitWith {cutText [format["You need 4x burlap, 4x canvas and a knife to craft a large gunbag!"], "PLAIN DOWN"];};
if (dayz_combat == 1) then { 
    cutText [format["You are in combat and cannot craft a Large Gunbag"], "PLAIN DOWN"];
} else {
	player playActionNow "Medic";
	r_interrupt = false;
  _removed = [["ItemCanvas",4], ["ItemBurlap",4]] call player_removeItems;


  cutText [format["You are starting to sew some textiles together. Hopefully it will work!"], "PLAIN DOWN"];
  sleep 3;
  
 	_dis=10;
	_sfx = "tentunpack";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
  Canvascondition = (1 + round(random 99));
	sleep 6;
	
  if (Canvascondition < 30) then {
  cutText [format["Your sewing skills fail you. You decided to discard the failed result."], "PLAIN DOWN"];
  } else {
  
  player addBackpack "DZ_LargeGunBag_EP1";
	sleep 3;
  cutText [format["You successfully sewed a Large Gunbag. You are a good tailor!"], "PLAIN DOWN"];
  };
  
  	r_interrupt = false;
//	player switchMove "";
//	player playActionNow "stop";
	
	sleep 10;
	
};


//written by blueTesla