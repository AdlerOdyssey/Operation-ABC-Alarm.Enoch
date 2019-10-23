["Initialize"] call BIS_fnc_dynamicGroups;

<<<<<<< Updated upstream
[getMarkerPos "marker_7", 3.9, 1450, 2050] call diwako_cbrn_fnc_createZone;

=======
[getMarkerPos "marker_7", 0.9, 1450, 2050] call diwako_cbrn_fnc_createZone;
>>>>>>> Stashed changes
WEST setFriend [EAST, 1];
EAST setFriend [WEST, 1];
