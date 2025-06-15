#include "..\script_component.hpp"
/*
 * Author: TenuredCLOUD
 * Grabs current stance of player and returns needed stance icon
 *
 * Arguments:
 * None
 *
 * Return Value:
 * 0: Icon <STRING>
 * 1: Value <NUMBER>
 *
 * Example:
 * [] call spartan_common_fnc_getStance
*/

private _icon = "";
private _value = 0;

switch (true) do {
    case (stance player isEqualTo "STAND"): {
        _icon = QUOTE(a3\3den\data\attributes\stance\up_ca.paa);
        _value = 1;
    };
    case (stance player isEqualTo "CROUCH"): {
        _icon = QUOTE(a3\3den\data\attributes\stance\middle_ca.paa);
        _value = 0.5;
    };
    case (stance player isEqualTo "PRONE"): {
        _icon = QUOTE(a3\3den\data\attributes\stance\down_ca.paa);
        _value = 0.25;
    };
 };

[_icon, _value]
