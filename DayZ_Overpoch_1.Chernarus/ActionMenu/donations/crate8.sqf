_crate = "USVehicleBox" createVehicle (position player);
_crate setVariable ["Mission",1,true];

clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;

_crate addMagazineCargoGlobal ["ItemVault", 3];
_crate addMagazineCargoGlobal ["workbench_kit", 1];
_crate addMagazineCargoGlobal ["ItemComboLock", 2];

_crate addMagazineCargoGlobal ["metal_floor_kit", 20];
_crate addMagazineCargoGlobal ["cinder_garage_kit", 2];
_crate addMagazineCargoGlobal ["CinderBlocks", 160];
_crate addMagazineCargoGlobal ["cinder_wall_kit", 40];
_crate addMagazineCargoGlobal ["MortarBucket", 40];
_crate addMagazineCargoGlobal ["sandbag_nest_kit", 2];
_crate addMagazineCargoGlobal ["forest_large_net_kit", 3];
_crate addMagazineCargoGlobal ["ItemWoodStairs", 4];
_crate addMagazineCargoGlobal ["ItemWoodStairsSupport", 1];
_crate addMagazineCargoGlobal ["ItemWoodLadder", 5];
_crate addMagazineCargoGlobal ["ItemPole", 6];
_crate addMagazineCargoGlobal ["ItemTankTrap", 6];

_crate attachto [player, [0,3,1.7]];
sleep 5;
detach _crate;
player reveal _crate;

/*INFO

_crate addMagazineCargoGlobal ["MagazineClassnamehere", qty];   <- Add Items type Magazine
_crate addWeaponCargoGlobal ["WeaponClassnamehere", qty];   <- Add Items type Weapon
_crate addItemCargoGlobal ["ItemClassnamehere", qty];   <- Add Items type Toolbelts
_crate addBackpackCargoGlobal ["MagazineClassnamehere", qty];   <- Add Items type Backpack

*/

