_itemsPlayer = items player;
_magazinesPlayer = magazines player;
_hasitemcombo = [["ItemLetter",6], "ItemBriefcaseEmpty",["PartOreGold",4]] call player_checkItems;
_hasSO =	"PartOreSilver" in _magazinesPlayer;
if !(_hasitemcombo && _hasSO) exitWith {cutText [format["Mystery Briefcase Recipe: 1x Empty Briefcase, 6x Random Letters, 4x Gold Ore and 1x Silver Ore"], "PLAIN DOWN"];};
if (dayz_combat == 1) then { 
    cutText [format["You are in combat and cannot craft a mystery briefcase."], "PLAIN DOWN"];
} else {
	player playActionNow "Medic";
	r_interrupt = false;
	_removed = [["ItemLetter",6], "ItemBriefcaseEmpty",["PartOreGold",4]] call player_removeItems;
  player removeMagazine "PartOreSilver";

	_dis=10;
	_sfx = "document";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
	cutText [format["Adding 6 Random Slots to Empty Briefcase!"], "PLAIN DOWN"];
	sleep 5;
  
  cutText [format["Slot 1/6"], "PLAIN DOWN"];
  _dis=10;
	_sfx = "keypad_tick";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
  sleep 1;
  
  cutText [format["Slot 2/6"], "PLAIN DOWN"];
  _dis=10;
	_sfx = "keypad_tick";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
  sleep 1;
  
  cutText [format["Slot 3/6"], "PLAIN DOWN"];
  _dis=10;
	_sfx = "keypad_tick";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
  sleep 1;
  
  cutText [format["Slot 4/6"], "PLAIN DOWN"];
  _dis=10;
	_sfx = "keypad_tick";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
  sleep 1; 
  
	cutText [format["Slot 5/6"], "PLAIN DOWN"];
  _dis=10;
	_sfx = "keypad_tick";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
  sleep 1;
  
  cutText [format["Slot 6/6"], "PLAIN DOWN"];
  _dis=10;
	_sfx = "keypad_tick";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
  sleep 1;
  
  player playActionNow "Medic";
  _dis=10;
	_sfx = "tentpack";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
  cutText [format["Closing Briefcase"], "PLAIN DOWN"];
  sleep 6;
  player addMagazine "ItemBriefcase_Base";
	cutText [format["You crafted a >>Mystery Briefcase<<"], "PLAIN DOWN"];
		r_interrupt = false;
//	player switchMove "";
//	player playActionNow "stop";
		sleep 6;
		cutText [format["Note: Rightclick on Mystery Briefcase will spawn a crate with random treasure!!!"], "PLAIN DOWN"];
};

//written by blueTesla