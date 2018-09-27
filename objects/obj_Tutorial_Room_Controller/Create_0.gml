/// @description Init
screen_index = 0;
screen_counter = 0;
lead_time = game_fps / 4;

// screen_index 0
instructions1_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(instructions1_string, "FIRST LINE OF INSTRUCTIONS");
scr_Splitsfont_Set_Tweaks(instructions1_string, [0.05, 0.009, 0.018, 0, 30]);
instructions1_string_y = 0.2 * window_height;

instructions2_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(instructions2_string, "SECOND LINE OF INSTRUCTIONS");
scr_Splitsfont_Set_Tweaks(instructions2_string, [0.05, 0.009, 0.018, 0, 30]);
instructions2_string_y = 0.65 * window_height;

screen_0_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
instructions1_string_x_path = scr_SlideTween_Add_Default_Path(screen_0_tween, instructions1_string, slide_right);
instructions2_string_x_path =scr_SlideTween_Add_Default_Path(screen_0_tween, instructions2_string, slide_left);

// screen_index 1
excellent_work_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(excellent_work_string, "EXCELLENT WORK");
scr_Splitsfont_Set_Tweaks(excellent_work_string, [0.08, 0.005, 0.02, 0, -15]);
excellent_work_string_y = 0.42 * window_height;

screen_1_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
excellent_work_string_x_path = scr_SlideTween_Add_Default_Path(screen_1_tween, excellent_work_string, slide_right);
screen_1_tween.active = false;

// screen_index 2
good_luck_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(good_luck_string, "GOOD LUCK");
scr_Splitsfont_Set_Tweaks(good_luck_string, [0.08, 0.015, 0.05, 0, 15]);
good_luck_string_y = 0.42 * window_height;

screen_2_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
good_luck_string_x_path = scr_SlideTween_Add_Default_Path(screen_2_tween, good_luck_string, slide_left);
screen_2_tween.active = false;