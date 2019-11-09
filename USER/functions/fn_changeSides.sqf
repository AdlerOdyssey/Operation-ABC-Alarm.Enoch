{
    if (side _x == east) then {
        private _group = createGroup independent;
        (units _x) joinSilent _group;
    };
} forEach allGroups;