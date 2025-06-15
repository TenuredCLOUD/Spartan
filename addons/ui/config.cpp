#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"cba_main", "A3_ui_f", QCLASS(common)};
        authors[] = {"TenuredCLOUD"};
        VERSION_CONFIG;
    };
};

#include "\z\spartan\addons\ui\menus\core.hpp"

class RscTitles {
    #include "\z\spartan\addons\ui\menus\hud.hpp"
};
