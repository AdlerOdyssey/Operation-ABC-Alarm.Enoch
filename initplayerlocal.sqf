[true] call cbrn_fnc_init;

if (didJIP) then {
    [player] remoteExec ["grad_common_fnc_addJipToZeus",2,false];
};

["InitializePlayer", [player,true]] call BIS_fnc_dynamicGroups;
grad_template_ratingEH = player addEventHandler ["HandleRating",{0}];

["CBA_loadingScreenDone", {
    cutText ["", "BLACK OUT", 0];
    cutText ["","BLACK FADED", 999];
        [{time > (_this + 10)},{
            if (!(didJIP) || {(didJIP && !(isNil "GRAD_USER_introOver"))}) then {
                if (isNull (getAssignedCuratorLogic player)) then {
                    STHud_UIMode = 0;
                    diwako_dui_main_toggled_off = true;
                    [] call GRAD_USER_fnc_intro;
                } else {
                    cutText ["", "BLACK IN", 1];
                };
            } else {
                cutText ["", "BLACK IN", 1];
            };
        },time] call CBA_fnc_waitUntilAndExecute;
}] call CBA_fnc_addEventHandler;