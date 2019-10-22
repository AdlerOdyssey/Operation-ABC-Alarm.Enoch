["Initialize"] call BIS_fnc_dynamicGroups;

[getMarkerPos "marker_7", 3.9, 1450, 2050] call diwako_cbrn_fnc_createZone;
WEST setFriend [EAST, 1];
EAST setFriend [WEST, 1];
