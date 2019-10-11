params ["_effect", "_music"];
[_effect, 0, false] call BIS_fnc_setPPeffectTemplate;

playMusic [_music, 0];

cutText ["", "BLACK OUT", 0];
cutText ["","BLACK FADED", 999];

ace_player switchMove "amovpercmstpslowwrfldnon";

[{
    titleText [
        "<t font='PuristaBold' size='3'>Die Operation Lions Kiss scheiterte am 23.09.2019, mit einem Berg an Leichen</t>",
        "PLAIN",
        0.8,
        true,
        true
    ];

    private _filmgrain = ppEffectCreate ["FilmGrain", 2000];
    _filmgrain ppEffectEnable true;
    _filmgrain ppEffectAdjust [0.3, 0.3, 0.12, 0.12, 0.12, true];
    _filmgrain ppEffectCommit 0;

    private _camera = "camera" camCreate (getPosASL camPos_01);
    _camera camSetPos (getPos camPos_01);
    _camera camCommand "inertia on";
    _camera camSetTarget camTarget_01;
    _camera cameraEffect ["internal", "back"];
    _camera camSetFov 1;
    _camera camCommit 0;
    _camera camSetPos (getPos camPos_01);
    _camera camSetTarget camTarget_01;
    _camera camCommit 5;

    showCinemaBorder true;

    private _date = date;
    _date set [3, 10];
    _date set [4, 40];

    if (isNil "GRAD_Weather_change") then {
        GRAD_Weather_change = true;
        publicVariable "GRAD_Weather_change";

        ["grad_changeWeather", [_date, 0.2, 0, nil, [0,0,0]]] call CBA_fnc_serverEvent;
    };

    [{
        cutText ["", "BLACK IN", 3];
        [
             parseText "<t size='4'>Mehrere Tote in Radacz gefunden</t>",
            parseText "     -  Es gibt keinen logischen Grund warum das Alphabet sortiert ist wie es ist.  -  Führende Wissenschaftler sagen Ody Korn sei kein Getränk, sondern ein Reinigungsmittel  -  Trump bietet jedem kostenlose One-Way-Tickets nach Afrika und Mexiko an, der Amerika verlassen will  -  Afrikanischer Milliardär zahlt jedem 1 Million US-Dollar an jeden, der Afrika verlassen will, um nach Amerika zu gehen"
        ] spawn BIS_fnc_AAN;

        [{
            cutText ["", "BLACK OUT", 1];
            (uiNamespace getVariable "BIS_AAN") closeDisplay 1;

            [{
                params ["_camera"];

                cutText ["","BLACK FADED", 999];
                titleText ["<t font='PuristaBold' size='3'>Am 06.10.2019 began die NATO damit ihre Truppen für die anstehende Übung zusammen zu ziehen</t>", "PLAIN", 1, true, true];
                _camera camSetPos (getPos camPos_02);
                _camera camSetTarget camTarget_02;
                _camera camSetFov 1;
                _camera camCommit 0;

                private _date = date;
                _date set [3, 17];
                _date set [4, 0];

                if (isNil "GRAD_Weather_change_1") then {
                    GRAD_Weather_change_1 = true;
                    publicVariable "GRAD_Weather_change_1";

                    ["grad_changeWeather", [_date, 0.8, 0, nil, [0,0,0]]] call CBA_fnc_serverEvent;
                };

                [{
                    cutText ["", "BLACK IN", 2];
                    [
                        parseText "<t size='4'>US Army verlegt ihre Truppen für NATO Übung</t>",
                        parseText "     -  Es gibt keinen logischen Grund warum das Alphabet sortiert ist wie es ist.  -  Führende Wissenschaftler sagen Ody Korn sei kein Getränk, sondern ein Reinigungsmittel  -  Trump bietet jedem kostenlose One-Way-Tickets nach Afrika und Mexiko an, der Amerika verlassen will  -  Afrikanischer Milliardär zahlt jedem 1 Million US-Dollar an jeden, der Afrika verlassen will, um nach Amerika zu gehen"
                    ] spawn BIS_fnc_AAN;

                    [{
                        cutText ["", "BLACK OUT", 1];
                        (uiNamespace getVariable "BIS_AAN") closeDisplay 1;

                        [{
                            params ["_camera"];

                            cutText ["","BLACK FADED", 999];
                            titleText ["<t font='PuristaBold' size='3'>Am 07.10.2019 um 0600 CEST erreichte uns die Meldung, dass das NATO-Forschungslabor nahe Nadbor angegriffen wird</t>", "PLAIN", 1, true, true];
                            _camera camSetPos (getPos camPos_03);
                            _camera camSetTarget camTarget_03;
                            _camera camSetFov 1;
                            _camera camCommit 0;

                            GRAD_USER_introOver = true;
                            publicVariable "GRAD_USER_introOver";

                            [{
                                cutText ["", "BLACK IN", 2];
                                [
                                    parseText "<t size='4'>Schüsse fallen am NATO-Forschungslabor</t>",
                                    parseText "     -  Es gibt keinen logischen Grund warum das Alphabet sortiert ist wie es ist.  -  Führende Wissenschaftler sagen Ody Korn sei kein Getränk, sondern ein Reinigungsmittel  -  Trump bietet jedem kostenlose One-Way-Tickets nach Afrika und Mexiko an, der Amerika verlassen will  -  Afrikanischer Milliardär zahlt jedem 1 Million US-Dollar an jeden, der Afrika verlassen will, um nach Amerika zu gehen"
                                ] spawn BIS_fnc_AAN;

                                [{
                                    cutText ["","BLACK FADED", 999];
                                    (uiNamespace getVariable "BIS_AAN") closeDisplay 1;

                                    params ["_camera", "_filmgrain"];

                                    _filmgrain ppEffectEnable false;
                                    ppEffectDestroy _filmgrain;
                                    _camera cameraEffect ["terminate", "back"];
                                    camDestroy _camera;

                                    ["Default", 0, false] call BIS_fnc_setPPeffectTemplate;

                                    [{
                                        cutText ["", "BLACK IN", 5];
                                        [ace_player, "amovpercmstpslowwrfldnon", 1] call ace_common_fnc_doAnimation;

                                        [{
                                            [ 
                                                parseText "<t font='PuristaBold' size='7' color='#8b0000'>O</t><t font='PuristaBold' size='7' color='#ffffff'>peration </t><t font='PuristaBold' size='7' color='#8b0000'>L</t><t font='PuristaBold' size='7' color='#ffffff'>ions </t><t font='PuristaBold' size='7' color='#8b0000'>K</t><t font='PuristaBold' size='7' color='#ffffff'>iss </t><t font='PuristaBold' size='7' color='#8b0000'>2</t>", 
                                                [ 
                                                    safezoneX + 0.18 * safezoneW, 
                                                    safezoneY + 0.35 * safezoneH, 
                                                    2, 
                                                    1 
                                                ], 
                                                nil, 
                                                5, 
                                                [4,1], 
                                                0 
                                            ] spawn BIS_fnc_textTiles;

                                            10 fadeMusic 0;
                                            STHud_UIMode = 1;
                                            diwako_dui_main_toggled_off = false;

                                            [{
                                                playMusic "";
                                                0 fadeMusic 1;
                                            }, [], 11] call CBA_fnc_waitAndExecute;
                                        }, [], 4] call CBA_fnc_waitAndExecute;
                                    }, [], 2] call CBA_fnc_waitAndExecute;
                                }, _this, 12] call CBA_fnc_waitAndExecute;
                            }, _this, 12] call CBA_fnc_waitAndExecute;
                        }, _this, 2] call CBA_fnc_waitAndExecute;
                    }, _this, 12] call CBA_fnc_waitAndExecute;
                }, _this, 12] call CBA_fnc_waitAndExecute;
            }, _this, 2] call CBA_fnc_waitAndExecute;
        }, _this, 10] call CBA_fnc_waitAndExecute;
    }, [_camera, _filmgrain], 12] call CBA_fnc_waitAndExecute;
}, [], 3] call CBA_fnc_waitAndExecute;
