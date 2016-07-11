private ["_activatingPlayer","_isOK","_object","_worldspace","_location","_dir","_class","_uid","_key","_keySelected","_characterID","_donotusekey"];
//PVDZE_veh_Publish2 = [_veh,[_dir,_location],_part_out,false,_keySelected,_activatingPlayer];
_object = 		_this select 0;
_worldspace = 	_this select 1;
_class = 		_this select 2;
_donotusekey =	_this select 3;
_keySelected =  _this select 4;
_activatingPlayer =  _this select 5;

if(_donotusekey) then {
	_isOK = true;
} else {
	_isOK = isClass(configFile >> "CfgWeapons" >> _keySelected);
};

if(!_isOK) exitWith { diag_log ("HIVE: CARKEY DOES NOT EXIST: "+ str(_keySelected));  };

if(_donotusekey) then {
	_characterID = _keySelected;
} else {
	_characterID = str(getNumber(configFile >> "CfgWeapons" >> _keySelected >> "keyid"));
};

diag_log ("PUBLISH: Attempt " + str(_object));
_dir = 		_worldspace select 0;
_location = _worldspace select 1;

//Generate UID test using time
_uid = _worldspace call dayz_objectUID3;

// TODO: check if uid already exists && if so increment by 1 && check again as soon as we find nothing continue.

//Send request
_key = format["CHILD:308:%1:%2:%3:%4:%5:%6:%7:%8:%9:",dayZ_instance, _class, 0 , _characterID, _worldspace, [], [], 1,_uid];
diag_log ("HIVE: WRITE: "+ str(_key)); 
_key call server_hiveWrite;

// Switched to spawn so we can wait a bit for the ID
[_object,_uid,_characterID,_class,_dir,_location,_donotusekey,_activatingPlayer] spawn {
   private ["_object","_uid","_characterID","_done","_retry","_key","_result","_outcome","_oid","_class","_location","_object_para","_donotusekey","_activatingPlayer"];

   _object = _this select 0;
   _uid = _this select 1;
   _characterID = _this select 2;
   _class = _this select 3;
   //_dir = _this select 4;
   _location = _this select 5;
   _donotusekey = _this select 6;
   _activatingPlayer = _this select 7;

   _done = false;
	_retry = 0;
	// TODO: Needs major overhaul for 1.1
	while {_retry < 10} do {
		
		sleep 1;
		// GET DB ID
		_key = format["CHILD:388:%1:",_uid];
		diag_log ("HIVE: WRITE: "+ str(_key));
		_result = _key call server_hiveReadWrite;
		_outcome = _result select 0;
		if (_outcome == "PASS") then {
			_oid = _result select 1;
			//_object setVariable ["ObjectID", _oid, true];
			diag_log("CUSTOM: Selected " + str(_oid));
			_done = true;
			_retry = 100;

		} else {
			diag_log("CUSTOM: trying again to get id for: " + str(_uid));
			_done = false;
			_retry = _retry + 1;
		};
	};

	// Remove marker
	deleteVehicle _object;

	if(!_done) exitWith { diag_log("CUSTOM: failed to get id for : " + str(_uid)); };

	if(DZE_TRADER_SPAWNMODE) then {
		_object_para = createVehicle ["ParachuteMediumWest", [0,0,0], [], 0, "CAN_COLLIDE"];
		_object_para setPos [_location select 0, _location select 1,(_location select 2) + 65];
		_object = createVehicle [_class, [0,0,0], [], 0, "CAN_COLLIDE"];
	} else {
		_object = createVehicle [_class, _location, [], 0, "CAN_COLLIDE"];
	};

	if(!_donotusekey) then {
		// Lock vehicle
		_object setvehiclelock "locked";
	};

	clearWeaponCargoGlobal  _object;
	clearMagazineCargoGlobal  _object;
	// _object setVehicleAmmo DZE_vehicleAmmo;

//********************Custom Loadout Edit by blueTesla************************


if (_object isKindOf "Ka60_PMC") then {
    _object addWeapon "CMFlareLauncher";
    _object addMagazine "120Rnd_CMFlare_Chaff_Magazine";
  
};

if (_object isKindOf "Ka60_GL_PMC") then {
    _object addWeapon "CMFlareLauncher";
    _object addMagazine "120Rnd_CMFlare_Chaff_Magazine";

};

if (_object isKindOf "L39_TK_EP1") then {
    _object addWeapon "CMFlareLauncher";
    _object addMagazine "120Rnd_CMFlare_Chaff_Magazine";
 
};

if (_object isKindOf "AN2_DZ") then {
    _object addWeapon "TwinVickers";
    _object addMagazine "500Rnd_TwinVickers";
 
};

if (_object isKindOf "AN2_TK_EP1") then {
    _object addWeapon "TwinVickers";
    _object addMagazine "500Rnd_TwinVickers";
 
};


if (_object isKindOf "A10") then {                  //A10_US_EP1 still has the classic loadout with 4x gbu-12
    _object removeWeapon "BombLauncherA10";
    _object removeMagazine "4Rnd_GBU12";
    _object addWeapon "AirBombLauncher";             // This line will make the bombs dumbfire 
    _object addMagazine "4Rnd_FAB_250";
  
};

if (_object isKindOf "M2A3_EP1") then {               //Fixing Weaponary for M2A3 so : M6 = anti air only , M2A2 = anti ground only ,M2A3 = Hybrid   
    _object removeMagazine "2Rnd_TOW2";  
    _object removeMagazine "2Rnd_TOW2";          
    _object addWeapon "StingerLaucher_4x";
    _object addMagazine "4Rnd_Stinger";
   
};

 if (_object isKindOf "F35B") then {
    _object removeWeapon "BombLauncherF35";
    _object removeMagazine "2Rnd_GBU12";
    _object addWeapon "Mk82BombLauncher_6";             // This line will make the bombs dumbfire 
    _object addMagazine "6Rnd_Mk82";
    _object addMagazine "300Rnd_25mm_GAU12";
 
};

 if (_object isKindOf "AW159_Lynx_BAF") then {
_object  addWeapon "M197"; 
_object  addMagazine "750Rnd_M197_AH1";  
 
};


//*************************** Custom edit ends here ************************
	
	_object setVariable ["ObjectID", _oid, true];
	
	_object setVariable ["lastUpdate",time];
	
	_object setVariable ["CharacterID", _characterID, true];

	if(DZE_TRADER_SPAWNMODE) then {
		_object attachTo [_object_para, [0,0,-1.6]];
		sleep 1.0;
		WaitUntil{(([_object] call FNC_GetPos) select 2) < 0.1};
		detach _object;
		deleteVehicle _object_para;
	};

	PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_object];

	_object call fnc_veh_ResetEH;
	
	// for non JIP users this should make sure everyone has eventhandlers for vehicles.
	PVDZE_veh_Init = _object;
	publicVariable "PVDZE_veh_Init";
	
	diag_log ("PUBLISH: " + str(_activatingPlayer) + " Bought " + (_class) + " with ID " + str(_uid));
};
