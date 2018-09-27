/// @description Init


var title1_text = "REPLACE";
title1_size = 0.181;
var title1_weight = 0.062;
var title1_kern = 0.078;
var title1_rotationSpeed = 0;
var title1_angle = 0;

var title2_text = "THIS";
var title2_size = 0.122;
var title2_weight = 0.008;
var title2_kern = 0.059;
var title2_rotationSpeed = 0;
var title2_angle = 17;

// repeat above as needed if your title is longer

// twitch params
twitching_up = false;
twitching_down = false;
twitch_minDelay = 120;
twitch_maxDelay = 480;
twitch_minScaleUp = 0.2;
twitch_maxScaleUp = 0.6;
twitch_minPropTwitchPerFrame = 0.06;
twitch_maxPropTwitchPerFrame = 0.2;
twitch_twitchDownPerFrameMult = 2;

target_size = title1_size;
current_size = title1_size;
twitch_up_per_frame = 0;
twitch_down_per_frame = 0;


// adjust and add/remove below as needed

title1 = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(title1, title1_text);
scr_Splitsfont_Set_Tweaks(title1, [title1_size, title1_weight, title1_kern, title1_rotationSpeed, title1_angle]);
title1_center = 15 + window_x_center;
title1_x = title1_center - scr_Splitsfont_Get_Width(title1) / 2;
title1_y = 0.19 * window_height;

title2 = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(title2, title2_text);
scr_Splitsfont_Set_Tweaks(title2, [title2_size, title2_weight, title2_kern, title2_rotationSpeed, title2_angle]);
title2_x  = window_x_center - scr_Splitsfont_Get_Width(title2) / 2;
title2_y = 0.44 * window_height;


title_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
title_tween.close_enough *= 0.01;

title_x_paths[0] = scr_SlideTween_Add_Path(
	title_tween,
	[
		window_width,
		title1,
		-slide_three_window_widths
	]
);
title_x_paths[1] = scr_SlideTween_Add_Default_Path(title_tween, title2, slide_right);

// MAIN MENU
main_menu_labels[0] = "PLAY"
main_menu_labels[1] = "TUTORIAL";
main_menu_labels[2] = "CREDITS";
main_menu_labels[3] = "EXIT";

main_menu = scr_Menu_NEW(
	window_x_center, 0.8 * window_height,
	main_menu_labels,
	menu_is_tweened
);