#include "..\script_component.hpp"
/*
 * Author: TenuredCLOUD
 * Hud processor
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call spartan_common_fnc_processHud
*/

[{CBA_missionTime > 1}, {

    QGVAR(display) cutRsc [QUOTE(spartan_hud), "PLAIN", 1, false];

    [{
        params ["_args", "_handle"];

        if (!alive player) exitWith {};

        call FUNC(getStance) params ["_icon", "_value"];
        call FUNC(getCalculatedNoise) params ["_noiseValue"];

        private _display = uiNamespace getVariable [QUOTE(spartan_ui), objNull];

        private _stanceIcon = _display displayCtrl 1200;
        private _stanceBar = _display displayCtrl 1000;
        private _soundBar = _display displayCtrl 1001;
        private _fatigueBar = _display displayCtrl 1002;

        _stanceIcon ctrlSetText _icon;
        _stanceBar progressSetPosition _value;
        _soundBar progressSetPosition _noiseValue;

        private _fatigueValue = [getFatigue player, player getVariable ["ace_advanced_fatigue_aimFatigue", 0]] select (!isNil "ace_advanced_fatigue_enabled" && {ace_advanced_fatigue_enabled});
        _fatigueBar progressSetPosition (1 - (_fatigueValue));
    }, 0] call CBA_fnc_addPerFrameHandler;
}, []] call CBA_fnc_waitUntilAndExecute;
