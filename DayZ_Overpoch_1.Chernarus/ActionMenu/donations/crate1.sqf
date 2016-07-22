_pvpbox1 = "USVehicleBox" createVehicle (position player);
_pvpbox1 setVariable ["Mission",1,true];

clearWeaponCargoGlobal _pvpbox1;
clearMagazineCargoGlobal _pvpbox1;

_pvpbox1 addWeaponCargoGlobal ["ChainSawR", 1];
_pvpbox1 addMagazineCargoGlobal ["CSGAS", 5];
_pvpbox1 addItemCargoGlobal ["ItemMachete", 1];

_pvpbox1 addMagazineCargoGlobal ["ItemBandage", 10];
_pvpbox1 addMagazineCargoGlobal ["ItemBloodbag", 2];
_pvpbox1 addMagazineCargoGlobal ["ItemMorphine", 10];
_pvpbox1 addMagazineCargoGlobal ["ItemPainkiller", 10];
_pvpbox1 addMagazineCargoGlobal ["ItemHeatPack", 2];
_pvpbox1 addMagazineCargoGlobal ["ItemAntibiotic", 2];


_pvpbox1 addBackpackCargoGlobal ["DZ_British_ACU", 1];

_pvpbox1 attachto [player, [0,3,1.7]];
sleep 5;
detach _pvpbox1;
player reveal _pvpbox1;

sleep 300;
deleteVehicle _pvpbox1;

/*INFO

_crate addMagazineCargoGlobal ["MagazineClassnamehere", qty];   <- Add Items type Magazine
_crate addWeaponCargoGlobal ["WeaponClassnamehere", qty];   <- Add Items type Weapon
_crate addItemCargoGlobal ["ItemClassnamehere", qty];   <- Add Items type Toolbelts
_crate addBackpackCargoGlobal ["MagazineClassnamehere", qty];   <- Add Items type Backpack

*/

