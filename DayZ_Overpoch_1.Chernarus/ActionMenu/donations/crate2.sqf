_pvpbox2 = "USVehicleBox" createVehicle (position player);
_pvpbox2 setVariable ["Mission",1,true];

clearWeaponCargoGlobal _pvpbox2;
clearMagazineCargoGlobal _pvpbox2;

_pvpbox2 addWeaponCargoGlobal ["RH_m9", 1];
_pvpbox2 addMagazineCargoGlobal ["15Rnd_9x19_M9", 20];
_pvpbox2 addItemCargoGlobal ["ItemMachete", 1];

_pvpbox2 addMagazineCargoGlobal ["ItemBandage", 10];
_pvpbox2 addMagazineCargoGlobal ["ItemBloodbag", 2];
_pvpbox2 addMagazineCargoGlobal ["ItemMorphine", 10];
_pvpbox2 addMagazineCargoGlobal ["ItemPainkiller", 10];
_pvpbox2 addMagazineCargoGlobal ["ItemHeatPack", 2];
_pvpbox2 addMagazineCargoGlobal ["ItemAntibiotic", 2];


_pvpbox2 addBackpackCargoGlobal ["DZ_British_ACU", 1];

_pvpbox2 attachto [player, [0,3,1.7]];
sleep 5;
detach _pvpbox2;
player reveal _pvpbox2;

sleep 300;
deleteVehicle _pvpbox2;

/*INFO

_crate addMagazineCargoGlobal ["MagazineClassnamehere", qty];   <- Add Items type Magazine
_crate addWeaponCargoGlobal ["WeaponClassnamehere", qty];   <- Add Items type Weapon
_crate addItemCargoGlobal ["ItemClassnamehere", qty];   <- Add Items type Toolbelts
_crate addBackpackCargoGlobal ["MagazineClassnamehere", qty];   <- Add Items type Backpack

*/

