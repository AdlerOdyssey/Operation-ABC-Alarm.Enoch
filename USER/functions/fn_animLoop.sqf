params ["_unit", "_animation"];

// _unit setVariable ["grad_customAnimation", _animation];
_unit switchMove _animation;

_unit addEventHandler ["AnimDone", {
    params ["_unit", "_anim"];

    if (!alive _unit) exitWith {
        _unit removeEventHandler ["AnimDone", _thisEventHandler];
    };
    // _unit setVariable ["grad_customAnimation", _animation];
    _unit switchMove _anim;
}];