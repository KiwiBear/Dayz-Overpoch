_pvpbox4 = "USVehicleBox" createVehicle (position player);
_pvpbox4 setVariable ["Mission",1,true];

clearWeaponCargoGlobal _pvpbox4;
clearMagazineCargoGlobal _pvpbox4;

_pvpbox4 addWeaponCargoGlobal ["LeeEnfield", 1];
_pvpbox4 addMagazineCargoGlobal ["10x_303", 20];
_pvpbox4 addItemCargoGlobal ["ItemMachete", 1];

_pvpbox4 addMagazineCargoGlobal ["ItemBandage", 10];
_pvpbox4 addMagazineCargoGlobal ["ItemBloodbag", 2];
_pvpbox4 addMagazineCargoGlobal ["ItemMorphine", 10];
_pvpbox4 addMagazineCargoGlobal ["ItemPainkiller", 10];
_pvpbox4 addMagazineCargoGlobal ["ItemHeatPack", 2];
_pvpbox4 addMagazineCargoGlobal ["ItemAntibiotic", 2];


_pvpbox3 addBackpackCargoGlobal ["DZ_British_ACU", 1];

_pvpbox3 attachto [player, [0,3,1.7]];
sleep 5;
detach _pvpbox3;
player reveal _pvpbox3;

sleep 300;
deleteVehicle _pvpbox3;

/*INFO

_crate addMagazineCargoGlobal ["MagazineClassnamehere", qty];   <- Add Items type Magazine
_crate addWeaponCargoGlobal ["WeaponClassnamehere", qty];   <- Add Items type Weapon
_crate addItemCargoGlobal ["ItemClassnamehere", qty];   <- Add Items type Toolbelts
_crate addBackpackCargoGlobal ["MagazineClassnamehere", qty];   <- Add Items type Backpack

*/
