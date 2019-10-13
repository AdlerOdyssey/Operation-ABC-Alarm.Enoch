params ["_obj"];

private _action1 = [
    "searchWell",
    "Take Sample",
    "",
    {
		[_player, "AinvPknlMstpSnonWnonDnon_medic4"] call ace_common_fnc_doAnimation;

		// Create progress bar
		private _fnc_onFinish = {
			(_this select 0) params ["_player", "_target"];

			private _contermination = _target getVariable ["grad_user_conterminationLevel", random(5)];

			private _msg = switch (_contermination) do {
				case 0 : {"Keine Kontamination festgestellt"};
				case 1 : {"Leichte Kontamination festgestellt"};
				case 2 : {"Leicht erhöhte Kontamination festgestellt"};
				case 3 : {"Mittelstarke Kontamination festgestellt"};
				case 4 : {"Erhöhte Kontamination festgestellt"};
				case 5 : {"Starke Kontamination festgestellt"};
				default {"No contermination"};
			};

			hint _msg;
			systemChat _msg;

			// Reset animation
			[_player, "", 1] call ace_common_fnc_doAnimation;
		};
		private _fnc_onFailure = {
			(_this select 0) params ["_player", "_target"];

			// Reset animation
			[_player, "", 1] call ace_common_fnc_doAnimation;
		};

		private _fnc_condition = {
			true
		};

		[15, [_player, _target], _fnc_onFinish, _fnc_onFailure, "Taking sample ...", _fnc_condition] call ace_common_fnc_progressBar;
    },
    {true},
    {},
    [],
    [0,0,0]
] call ace_interact_menu_fnc_createAction;

[_obj, 0, ["ACE_MainActions"], _action1] call ace_interact_menu_fnc_addActionToObject;
