#include "..\script_component.hpp"
/*
 * Author: TenuredCLOUD
 * Calculates sound value based on player movement speed and stance
 *
 * Arguments:
 * None
 *
 * Return Value:
 * 0: Noise Value <NUMBER>
 *
 * Example:
 * [] call spartan_common_fnc_getCalculatedNoise
 */

private _value = 0;

if !(isNull objectParent player) exitWith {0};

private _speed = abs speed player;

private _stance = stance player;

private _maxSpeed = 20;
private _noiseMultipliers = [
    ["STAND", 1.0],
    ["CROUCH", 0.6],
    ["PRONE", 0.3]
];

_value = (_speed / _maxSpeed) min 1;

{
    _x params ["_stanceType", "_multiplier"];
    if (_stance isEqualTo _stanceType) exitWith {
        _value = _value * _multiplier;
    };
} forEach _noiseMultipliers;

if (_stance isEqualTo "PRONE") then {
    if (_speed < 0.5) then {
        _value = _value * 0.1;
    } else {
        _value = _value * 0.5;
    };
};

_value = (_value max 0) min 1;

_value
