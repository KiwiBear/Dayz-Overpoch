//FatCat's Action Menu

pathtoscripts = "actionmenu\tools\";
pathtocolors = "actionmenu\sky\";
pathtofog = "actionmenu\fog\";
pathtodonations = "actionmenu\donations\";
pathtobuilding = "actionmenu\building\";
pathtogesture = "actionmenu\gesture\";

EXECscript1 = 'player execVM "'+pathtoscripts+'%1"';
EXECscript2 = 'player execVM "'+pathtocolors+'%1"';
EXECscript4 = 'player execVM "'+pathtofog+'%1"';
EXECscript5 = 'player execVM "'+pathtodonations+'%1"';
EXECscript6 = 'player execVM "'+pathtobuilding+'%1"';
EXECscript7 = 'player execVM "'+pathtogesture+'%1"';



if ((getPlayerUID player) in ["76561198037761124","4874752","199059462","129564102"]) then {
Actionmenu =
[
	["",true],
    ["Gesticulate", [2], "#USER:GestureMenu", -5, [["expression", ""]], "1", "1"],
		["Tools", [3], "#USER:ToolMenu", -5, [["expression", ""]], "1", "1"],
    ["Craft Menu", [4], "#USER:ActionMenua", -5, [["expression", ""]], "1", "1"],
		["Deploy vehicles", [5], "#USER:DeployMenu", -5, [["expression", ""]], "1", "1"],
		["Color Filters", [6], "#USER:SkyMenu", -5, [["expression", ""]], "1", "1"],
		["View Distance (Better FPS)", [7], "#USER:FogMenu", -5, [["expression", ""]], "1", "1"],
    ["Rules and help", [8], "#USER:Info", -5, [["expression", ""]], "1", "1"],
		["Admin Tools", [9], "#USER:DonatorMenu", -5, [["expression", ""]], "1", "1"],
	  //["Advanced Building", [10], "#USER:BuildingMenu", -5, [["expression", ""]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];} else {
ActionMenu =
[
	["",true],
    ["Gesticulate", [2], "#USER:GestureMenu", -5, [["expression", ""]], "1", "1"],
    ["Tools", [3], "#USER:ToolMenu", -5, [["expression", ""]], "1", "1"],
    ["Craft Menu", [4], "#USER:ActionMenua", -5, [["expression", ""]], "1", "1"],
		["Deploy vehicles", [5], "#USER:DeployMenu", -5, [["expression", ""]], "1", "1"],
		["Color Filters", [6], "#USER:SkyMenu", -5, [["expression", ""]], "1", "1"],
		["View Distance (Fog)", [7], "#USER:FogMenu", -5, [["expression", ""]], "1", "1"],
    ["Rules and help", [8], "#USER:Info", -5, [["expression", ""]], "1", "1"],
	  //["Advanced Building", [8], "#USER:BuildingMenu", -5, [["expression", ""]], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
};

ActionMenua =
[
	["",true],	 
    ["Survival Items", [2], "#USER:SurvivalMenu", -5, [["expression", ""]], "1", "1"],
    ["Special Items", [3], "#USER:OtherMenu", -5, [["expression", ""]], "1", "1"],
    ["Upgrade Weapons", [4], "#USER:ActionMenua2", -5, [["expression", ""]], "1", "1"],
   		["", [-1], "", -5, [["expression", ""]], "1", "0"],        
 			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

ActionMenua2=
[
	["",true],
    ["Info Weapon Upgrades", [2],  "", -5, [["expression", format[EXECscript1,"info.sqf"]]], "1", "1"],	
    ["Upgrade M8", [3],  "", -5, [["expression", format[EXECscript1,"m8tws.sqf"]]], "1", "1"],
    ["Upgrade AKS-74", [4],  "", -5, [["expression", format[EXECscript1,"GOSHAWK.sqf"]]], "1", "1"],
    ["Upgrade ACR (Woodland)", [5],  "", -5, [["expression", format[EXECscript1,"wdlacr.sqf"]]], "1", "1"],
    ["Upgrade ACR (Black)", [6],  "", -5, [["expression", format[EXECscript1,"blkacr.sqf"]]], "1", "1"],
    ["Upgrade ACR (Desert)", [7],  "", -5, [["expression", format[EXECscript1,"tanacr.sqf"]]], "1", "1"],
    ["Upgrade ACR (Winter)", [8],  "", -5, [["expression", format[EXECscript1,"snwacr.sqf"]]], "1", "1"],
    ["Upgrade M249", [8],  "", -5, [["expression", format[EXECscript1,"m249tws.sqf"]]], "1", "1"],
    ["Upgrade M110 NV Scope", [9],  "", -5, [["expression", format[EXECscript1,"m110tws.sqf"]]], "1", "1"],
    ["Upgrade M107", [10],  "", -5, [["expression", format[EXECscript1,"m107tws.sqf"]]], "1", "1"],
    ["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

DeployMenu =
[
	["",true],
		["Deploy Bike", [2],  "", -5, [["expression", format[EXECscript1,"bike.sqf"]]], "1", "1"],
		["Deploy Motorcycle", [3],  "", -5, [["expression", format[EXECscript1,"motor.sqf"]]], "1", "1"],
		["Deploy Gyrocopter", [4],  "", -5, [["expression", format[EXECscript1,"gyro.sqf"]]], "1", "1"],
		["Pack Created Vehicle", [5],  "", -5, [["expression", format[EXECscript1,"pack.sqf"]]], "1", "1"],		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

SkyMenu =
[
["",true],
        ["Color Bluff", [2],  "", -5, [["expression", format[EXECscript2 ,"16.sqf"]]], "1", "1"],  
        ["Dark Draining", [3],  "", -5, [["expression", format[EXECscript2 ,"3.sqf"]]], "1", "1"],
        ["Sandy", [4],  "", -5, [["expression", format[EXECscript2 ,"4.sqf"]]], "1", "1"],
        ["Summer Chernarus", [5],  "", -5, [["expression", format[EXECscript2 ,"5.sqf"]]], "1", "1"],
        ["Dog Vision", [6],  "", -5, [["expression", format[EXECscript2 ,"6.sqf"]]], "1", "1"],
        ["Tropical", [7],  "", -5, [["expression", format[EXECscript2 ,"7.sqf"]]], "1", "1"],
        ["Photo", [8],  "", -5, [["expression", format[EXECscript2 ,"8.sqf"]]], "1", "1"],
        ["WarZone", [9],  "", -5, [["expression", format[EXECscript2 ,"9.sqf"]]], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
            ["Next page", [12], "#USER:SkyMenu2", -5, [["expression", ""]], "1", "1"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
SkyMenu2 =
[
["",true],

        ["Operation Flashpoint", [2],  "", -5, [["expression", format[EXECscript2 ,"10.sqf"]]], "1", "1"],
        ["Africa", [3],  "", -5, [["expression", format[EXECscript2 ,"11.sqf"]]], "1", "1"],
        ["Blue", [4],  "", -5, [["expression", format[EXECscript2 ,"12.sqf"]]], "1", "1"],
        ["Arma Mission Colours", [5],  "", -5, [["expression", format[EXECscript2 ,"13.sqf"]]], "1", "1"],
        ["Heavy Colour Correction", [6],  "", -5, [["expression", format[EXECscript2 ,"14.sqf"]]], "1", "1"],
        ["Zombie View", [7],  "", -5, [["expression", format[EXECscript2 ,"15.sqf"]]], "1", "1"],
        ["Wasteland", [8],  "", -5, [["expression", format[EXECscript2 ,"2.sqf"]]], "1", "1"],
        ["Clear Contrast", [9],  "", -5, [["expression", format[EXECscript2 ,"1.sqf"]]], "1", "1"],
        ["Normal Colours", [10],  "", -5, [["expression", format[EXECscript2 ,"18.sqf"]]], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
            ["Particle Effects", [12], "#USER:SkyMenu3", -5, [["expression", ""]], "1", "1"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

SkyMenu3 =
[
["",true],
            ["Read Me before continue !", [2],  "", -5, [["expression", format[EXECscript1,"bug.sqf"]]], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
            ["Continue", [12], "#USER:SkyMenu4", -5, [["expression", ""]], "1", "1"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

SkyMenu4 =
[
["",true],
            ["Snowstorm", [2],  "", -5, [["expression", format[EXECscript2 ,"17.sqf"]]], "1", "1"],
            ["Dusty", [2],  "", -5, [["expression", format[EXECscript2 ,"19.sqf"]]], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

FogMenu =
[
["",true],
        ["250M", [2],  "", -5, [["expression", format[EXECscript4 ,"250.sqf"]]], "1", "1"],
        ["500M", [3],  "", -5, [["expression", format[EXECscript4 ,"500.sqf"]]], "1", "1"],
        ["750M", [4],  "", -5, [["expression", format[EXECscript4 ,"750.sqf"]]], "1", "1"],
        ["1000M", [5],  "", -5, [["expression", format[EXECscript4 ,"1000.sqf"]]], "1", "1"],
        ["1250M", [6],  "", -5, [["expression", format[EXECscript4 ,"1250.sqf"]]], "1", "1"],
        ["1500M", [7],  "", -5, [["expression", format[EXECscript4 ,"1500.sqf"]]], "1", "1"],
        ["1750M", [8],  "", -5, [["expression", format[EXECscript4 ,"1750.sqf"]]], "1", "1"],
        ["2000M", [9],  "", -5, [["expression", format[EXECscript4 ,"2000.sqf"]]], "1", "1"],
        ["2500M", [10],  "", -5, [["expression", format[EXECscript4 ,"2500.sqf"]]], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
            ["Next page", [12], "#USER:FogMenu2", -5, [["expression", ""]], "1", "1"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
FogMenu2 =
[
["",true],
        ["3000M", [2],  "", -5, [["expression", format[EXECscript4 ,"3000.sqf"]]], "1", "1"],
        ["4000M", [3],  "", -5, [["expression", format[EXECscript4 ,"4000.sqf"]]], "1", "1"],
        ["5000M", [4],  "", -5, [["expression", format[EXECscript4 ,"5000.sqf"]]], "1", "1"],
        ["10000M", [5],  "", -5, [["expression", format[EXECscript4 ,"10000.sqf"]]], "1", "1"],
        ["20000M (Super Computer)", [6],  "", -5, [["expression", format[EXECscript4 ,"20000.sqf"]]], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
DonatorMenu =
[
["",true],
        ["Spawn Crate 1", [2],  "", -5, [["expression", format[EXECscript5 ,"crate1.sqf"]]], "1", "1"],
        ["Spawn Crate 2", [3],  "", -5, [["expression", format[EXECscript5 ,"crate2.sqf"]]], "1", "1"],
        ["Spawn Crate 3", [4],  "", -5, [["expression", format[EXECscript5 ,"crate3.sqf"]]], "1", "1"],
        ["Spawn Crate 4", [5],  "", -5, [["expression", format[EXECscript5 ,"crate4.sqf"]]], "1", "1"],
        ["Spawn Crate 5", [6],  "", -5, [["expression", format[EXECscript5 ,"crate5.sqf"]]], "1", "1"],
        ["Spawn Crate 6", [7],  "", -5, [["expression", format[EXECscript5 ,"crate6.sqf"]]], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
BuildingMenu =
[
["",true],
        ["Advanced Building Recipes", [2],  "", -5, [["expression", format[EXECscript6 ,"build_recipe_dialog.sqf"]]], "1", "1"],
        ["Building Help", [3],  "", -5, [["expression", format[EXECscript6 ,"build_help.sqf"]]], "1", "1"],
		["Show Flag Markers", [4],  "", -5, [["expression", format[EXECscript6 ,"show_flag_markers.sqf"]]], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

GestureMenu =
[
	["",true],
		["Go", [2],  "", -5, [["expression", format[EXECscript7,"Go.sqf"]]], "1", "1"],
		["Cover", [3],  "", -5, [["expression", format[EXECscript7,"COVER.sqf"]]], "1", "1"],
		["Attack", [4],  "", -5, [["expression", format[EXECscript7,"ATTACK.sqf"]]], "1", "1"],
		["CeaseFire", [5],  "", -5, [["expression", format[EXECscript7,"CEASEFIRE.sqf"]]], "1", "1"],		
    ["Follow", [6],  "", -5, [["expression", format[EXECscript7,"FOLLOW.sqf"]]], "1", "1"],
		["Up", [7],  "", -5, [["expression", format[EXECscript7,"UP.sqf"]]], "1", "1"],
		["Advance", [8],  "", -5, [["expression", format[EXECscript7,"ADVANCE.sqf"]]], "1", "1"],
		["Point", [9],  "", -5, [["expression", format[EXECscript7,"POINT.sqf"]]], "1", "1"],
    ["Freeze", [10],  "", -5, [["expression", format[EXECscript7,"FREEZE.sqf"]]], "1", "1"],	
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
      ["Special", [12], "#USER:FunMenu", -5, [["expression", ""]], "1", "1"],
	 		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

ToolMenu =
[
  	["",true],
		["Flip Vehicle", [2],  "", -5, [["expression", format[EXECscript1,"flipvehicle.sqf"]]], "1", "1"],
    ["Self Bloodbag", [3],  "", -5, [["expression", format[EXECscript1,"bloodbag.sqf"]]], "1", "1"],
		// ["Commit Suicide", [4],  "", -5, [["expression", format[EXECscript1,"suicide.sqf"]]], "1", "1"],
   		["", [-1], "", -5, [["expression", ""]], "1", "0"],        
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

Info =
[
	["",true],
    ["Info and Hints", [2],  "", -5, [["expression", format[EXECscript1,"help.sqf"]]], "1", "1"],
    ["Server Rules", [3],  "", -5, [["expression", format[EXECscript1,"rulesfc.sqf"]]], "1", "1"],
   	["", [-1], "", -5, [["expression", ""]], "1", "0"],        
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

FunMenu =
[
	["",true],
    ["Watch Clock", [2],  "", -5, [["expression", format[EXECscript7,"A.sqf"]]], "1", "1"],
    ["Come with me!", [3],  "", -5, [["expression", format[EXECscript7,"B.sqf"]]], "1", "1"],
    ["Suprise bellyache!", [5],  "", -5, [["expression", format[EXECscript7,"D.sqf"]]], "1", "1"],
    ["Facepalm", [6],  "", -5, [["expression", format[EXECscript7,"E.sqf"]]], "1", "1"],
   // ["What have you done ...", [8],  "", -5, [["expression", format[EXECscript7,"G.sqf"]]], "1", "1"],  //ONLY CLIENT BASED OTHER PLAYERS WONT SEE THIS ANIMATION
   // ["Bored", [9],  "", -5, [["expression", format[EXECscript7,"H.sqf"]]], "1", "1"],  //ONLY CLIENT BASED OTHER PLAYERS WONT SEE THIS ANIMATION
   	["", [-1], "", -5, [["expression", ""]], "1", "0"],        
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

SurvivalMenu =
[
	["",true],
     ["Synthesize Bloodbag", [2],  "", -5, [["expression", format[EXECscript1,"makebloodbag.sqf"]]], "1", "1"],
     ["Manufacture Mophine", [3],  "", -5, [["expression", format[EXECscript1,"makemophine.sqf"]]], "1", "1"],
     ["Manufacture Painkillers", [4],  "", -5, [["expression", format[EXECscript1,"makepain.sqf"]]], "1", "1"],  
     ["Manufacture Antibiotics", [5],  "", -5, [["expression", format[EXECscript1,"makeanti.sqf"]]], "1", "1"],
     ["Craft Large Gunbag", [6],  "", -5, [["expression", format[EXECscript1,"makelarge.sqf"]]], "1", "1"],
   	["", [-1], "", -5, [["expression", ""]], "1", "0"],        
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];


OtherMenu =
[
	["",true],
    ["Craft Mystery Briefcase", [2],  "", -5, [["expression", format[EXECscript1,"mbc.sqf"]]], "1", "1"],
	  ["Craft Laserbattery", [3],  "", -5, [["expression", format[EXECscript1,"LaserB.sqf"]]], "1", "1"],
    ["Craft Lasermarker", [4],  "", -5, [["expression", format[EXECscript1,"LaserM.sqf"]]], "1", "1"],
    	["", [-1], "", -5, [["expression", ""]], "1", "0"],        
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];


showCommandingMenu "#USER:ActionMenu";

