/*
*   Wird zum Missionsstart auf Server und Clients ausgeführt.
*   Funktioniert wie die init.sqf.
*/
if (!hasInterface) exitWith {};


["Operation ABC Alarm", "Opfor feindlich machen", {
    params ["_position", "_object"];

    [] remoteExecCall ["grad_user_fnc_changeSides",2];

    systemChat "east is now enemy to west";

}] call zen_custom_modules_fnc_register;