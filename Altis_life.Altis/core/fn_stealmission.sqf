/*
	File: fn_stealmission.sqf
	Author: Christopher "HappyDuckie" Sørensen
	Date: 18.11.2017
*/
if (!isMultiplayer) exitWith {};
_servername = serverName;
if (_servername != "servername") exitWith {
	[] spawn {
		while {true} do {
		_layer = "normal" cutText ["This mission belongs to commmunity!","PLAIN"];
		sleep 30;
		if(vehicle player != player) then { vehicle player setDamage 1; };
		_veh = "Bo_GBU12_LGB" createVehicle position player;
		sleep 5;
    _layer = "normal" cutText ["This mission belongs to commmunity!","PLAIN"];
		player setDamage 1;
    sleep 2;
    "shit" cutText ["", "BLACK", 0.5, true];
		sleep 10;
		["stealmission",false,true] call BIS_fnc_endMission;
		};
	};
};
