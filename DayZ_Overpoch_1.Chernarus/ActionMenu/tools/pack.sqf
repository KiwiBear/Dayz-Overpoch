_cursorTarget = cursorTarget;
_typeOfCursorTarget = typeOf _cursorTarget;	

if !(_typeOfCursorTarget == "CSJ_GyroC") then {
		cutText [format["You must be looking at the created vehicle to repack it"], "PLAIN DOWN"];
};

if !(_typeOfCursorTarget == "TT650_Civ") then {
		cutText [format["You must be looking at the created vehicle to repack it"], "PLAIN DOWN"];
};

if !(_typeOfCursorTarget == "Old_bike_TK_CIV_EP1") then {
		cutText [format["You must be looking at the created vehicle to repack it"], "PLAIN DOWN"];
};

if(_typeOfCursorTarget == "CSJ_GyroC") then {
	if (dayz_combat == 1) then { 
		cutText [format["You are in combat and cannot re-pack your gyrocopter"], "PLAIN DOWN"];
	} else {
		player removeAction s_player_deploybike6;
		player playActionNow "Medic";
		r_interrupt = false;
		deletevehicle cursortarget;
		_dis=10;
		_sfx = "repair";
		[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
		[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
	
		sleep 6;
	
		player addWeapon "ItemToolbox";
		player addMagazine "PartEngine";
		player addMagazine "PartVRotor";		

		cutText [format["You have packed your gyrocopter. Your parts have been added to your inventory."], "PLAIN DOWN"];
	
		r_interrupt = false;
		player switchMove "";
		player playActionNow "stop";	
	};
};	

if(_typeOfCursorTarget == "TT650_Civ") then {
	if (dayz_combat == 1) then { 
		cutText [format["You are in combat and cannot re-pack your motorcycle"], "PLAIN DOWN"];
	} else {
		player removeAction s_player_deploybike4;
		player playActionNow "Medic";
		r_interrupt = false;
		deletevehicle cursortarget;
		_dis=10;
		_sfx = "repair";
		[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
		[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
	
		sleep 6;

		player addWeapon "ItemToolbox";
		player addMagazine "PartEngine";	

		cutText [format["You have packed your motorcylce. Your parts have been added to your inventory."], "PLAIN DOWN"];
	
		r_interrupt = false;
		player switchMove "";
		player playActionNow "stop";	
	};
};	

if(_typeOfCursorTarget == "Old_bike_TK_CIV_EP1") then {
	if (dayz_combat == 1) then { 
		cutText [format["You are in combat and cannot re-pack your bike."], "PLAIN DOWN"];
	} else {
		player removeAction s_player_deploybike2;
		player playActionNow "Medic";
		r_interrupt = false;
		player addWeapon "ItemToolbox";
		deletevehicle cursortarget;
		_dis=10;
		_sfx = "repair";
		[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
		[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
	
		sleep 6;
	
		cutText [format["You have packed your bike and been given back your toolbox"], "PLAIN DOWN"];
	
		r_interrupt = false;
		player switchMove "";
		player playActionNow "stop";
	};
};		