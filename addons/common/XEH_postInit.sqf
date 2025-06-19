#include "script_component.hpp"

if !(hasInterface) exitWith {};

onPreloadFinished {
    call FUNC(processHud);
    onPreloadFinished "";
};
