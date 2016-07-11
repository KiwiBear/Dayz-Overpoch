//1STBuildBuff


_itemsPlayer = items player;
_magazinesPlayer = magazines player;
_hasSoda = 	"ItemSodaRbull" in _magazinesPlayer;
_hasETW =	"ItemEtool" in _magazinesPlayer;

if !(_hasSoda && _hasEtool) exitWith {cutText [format["You need RedBull and a Etool to build faster for 3 minutes."], "PLAIN DOWN"];};
if (DZE_StaticConstructionCount == 1) then { 
    cutText [format["You are in 1-Building Step mode. You can't drink this Redbull until the fast build mode has ended yet."], "PLAIN DOWN"];
} else {
	player playActionNow "PutDown"; // ÄNDERN
	_dis=10;
	_sfx = "soda";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;


	r_interrupt = false;
	player removeMagazine "ItemSodaRbull";
     DZE_StaticConstructionCount = 1; //One Step building
	sleep 3;
	cutText [format["You can now build faster for 3 minutes."], "PLAIN DOWN"];
	sleep 180;

	cutText [format["Fast build mode is over !"], "PLAIN DOWN"];
	DZE_StaticConstructionCount = 3;
	
	r_interrupt = false;
//	player switchMove "";
//	player playActionNow "stop";
	sleep 1;
};

//by blueTesla