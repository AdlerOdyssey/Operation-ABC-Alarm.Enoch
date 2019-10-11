if (isServer) exitWith {};

wounded_worker_01 switchMove "Acts_CivilInjuredChest_1";

[{ 
	params ["_unit", "_handle"]; 
	if (damage _unit >= 1) exitWith {[_handle] call CBA_fnc_removePerFrameHandler;};  
	
	_unit switchMove "Acts_CivilInjuredChest_1"; 
}, 15, wounded_worker_01] call CBA_fnc_addPerFrameHandler;