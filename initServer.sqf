["Initialize"] call BIS_fnc_dynamicGroups;

[false] call cbrn_fnc_init;

[getMarkerPos "mrk_contaminationZone", 0.9, 1450, 2050] call cbrn_fnc_createZone;

WEST setFriend [EAST, 1];
EAST setFriend [WEST, 1];