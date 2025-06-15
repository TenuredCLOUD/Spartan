class CLASS(hud) {
    idd = 7727826;
	duration = 10000000000;
    onLoad = QUOTE(uiNamespace setVariable [ARR_2(QUOTE(QUOTE(spartan_ui)),_this select 0)]);
    fadein = 0;
    fadeout = 0;

	class ControlsBackground {
        class CLASS(stance_icon): RscPicture
        {
	        idc = 1200;
	        x = -24.5 * GUI_GRID_W + GUI_GRID_X;
	        y = 23.5 * GUI_GRID_H + GUI_GRID_Y;
	        w = 9 * GUI_GRID_W;
	        h = 8.5 * GUI_GRID_H;
        };
	};
	class Controls {
        class CLASS(stance_progress): CLASS(RscProgress_V)
        {
	        idc = 1000;
	        x = -26 * GUI_GRID_W + GUI_GRID_X;
	        y = 23.5 * GUI_GRID_H + GUI_GRID_Y;
	        w = 0.5 * GUI_GRID_W;
	        h = 8.5 * GUI_GRID_H;
        };
        class CLASS(sound_progress): CLASS(RscProgress)
        {
	        idc = 1001;
	        x = -24.5 * GUI_GRID_W + GUI_GRID_X;
	        y = 32.5 * GUI_GRID_H + GUI_GRID_Y;
	        w = 9 * GUI_GRID_W;
	        h = 0.25 * GUI_GRID_H;
        };
        class CLASS(stamina_progress): CLASS(RscProgress)
        {
	        idc = 1002;
	        x = -24.54 * GUI_GRID_W + GUI_GRID_X;
	        y = 33.12 * GUI_GRID_H + GUI_GRID_Y;
	        w = 9 * GUI_GRID_W;
	        h = 0.5 * GUI_GRID_H;
        };
        class CLASS(sound_icon): RscPicture
        {
	        idc = 1201;
	        text = QUOTE(a3\modules_f_curator\data\portraitsound_ca.paa);
			x = -26.16 * GUI_GRID_W + GUI_GRID_X;
	        y = 32.4 * GUI_GRID_H + GUI_GRID_Y;
	        w = 1 * GUI_GRID_W;
	        h = 0.5 * GUI_GRID_H;
        };
		class spartan_stamina_icon: RscPicture
        {
	        idc = 1202;
	        text = QUOTE(a3\ui_f_curator\data\rsccommon\rscattributespeedmode\normal_ca.paa);
	        x = -26.5 * GUI_GRID_W + GUI_GRID_X;
	        y = 33 * GUI_GRID_H + GUI_GRID_Y;
	        w = 1.5 * GUI_GRID_W;
	        h = 1 * GUI_GRID_H;
        };
	};
};
