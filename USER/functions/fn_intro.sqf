    cutText ["", "BLACK OUT", 0];
    cutText ["","BLACK FADED", 999];
    
[{
    if (isNil "MISSION_ROOT") then {
        if(isDedicated) then {
            MISSION_ROOT = "mpmissions\__CUR_MP." + worldName + "\";
        } else {
            MISSION_ROOT = str missionConfigFile select [0, count str missionConfigFile - 15];
        };
    };

    //[MISSION_ROOT + "USER\movie\intro.ogv"] call BIS_fnc_playVideo;

    private _camera = "camera" camCreate (getPosASL camPos_01);
    _camera camSetPos (getPos camPos_01);
    _camera camCommand "inertia on";
    _camera camSetTarget LKW_1;
    _camera cameraEffect ["internal", "back"];
    _camera camSetFov 1;
    _camera camCommit 0;
    _camera camSetPos (getPos camPos_01);
    _camera camSetTarget LKW_1;
    _camera camCommit 0;


    [{
        params ["_camera"];
        
        private _filmgrain = ppEffectCreate ["FilmGrain", 2000];
        _filmgrain ppEffectEnable true;
        _filmgrain ppEffectAdjust [0.3, 0.3, 0.12, 0.12, 0.12, true];
        _filmgrain ppEffectCommit 0;

        LKW_1 setFuel 1;

        showCinemaBorder true;

        [{
            cutText ["", "BLACK IN", 4];

            [{
                [ 
                    parseText "<t font='PuristaBold' size='7' color='#8b0000'>R</t><t font='PuristaBold' size='7' color='#ffffff'>eed </t><t font='PuristaBold' size='7' color='#8b0000'>M</t><t font='PuristaBold' size='7' color='#ffffff'>oon </t>", 
                    [ 
                        safezoneX + 0.38 * safezoneW, 
                        safezoneY + 0.35 * safezoneH, 
                        2, 
                        1 
                    ], 
                    nil, 
                    7, 
                    [4,1], 
                    0 
                ] spawn BIS_fnc_textTiles;

                [{
                    params ["_camera", "_filmgrain"];

                    _camera camSetTarget ace_player;
                    _camera camSetFov 1;
                    _camera camCommit 0;


                    [{
                        params ["_camera", "_filmgrain"];

                        _camera camSetPos (getPos camPos_02);
                        _camera camSetFov 0.1;
                        _camera camCommit 14;

                        [{
                            cutText ["","BLACK OUT", 1];

                            [{
                                params ["_camera", "_filmgrain"];

                                _filmgrain ppEffectEnable false;
                                ppEffectDestroy _filmgrain;
                                _camera cameraEffect ["terminate", "back"];
                                camDestroy _camera;

                                cutText ["","BLACK IN", 1];   

                                [{
                                    10 fadeMusic 0;

                                }, [], 10] call CBA_fnc_waitAndExecute;
                            }, _this, 1] call CBA_fnc_waitAndExecute;
                        }, _this, 14] call CBA_fnc_waitAndExecute;
                    }, _this, 1] call CBA_fnc_waitAndExecute;
                }, _this, 24] call CBA_fnc_waitAndExecute;
            }, _this, 1] call CBA_fnc_waitAndExecute;
        }, [_camera, _filmgrain], 5] call CBA_fnc_waitAndExecute;
    }, [_camera], 3] call CBA_fnc_waitAndExecute; //Auf Video warten
}, [], 1] call CBA_fnc_waitAndExecute;