/// @description Init
global.input_tracker = instance_create_layer(0, 0, "Controllers", obj_Input_Tracker);
global.scoreboard = instance_create_layer(0, 0, "Controllers", obj_Scoreboard);

game_over_sliding_ribbon = instance_create_layer(
	window_width, sliding_ribbon_y, "SlidingRibbons", obj_Game_Over_Menu_Sliding_Ribbon
);

paused_sliding_ribbon = instance_create_layer(
	window_width, sliding_ribbon_y, "SlidingRibbons", obj_Paused_Sliding_Ribbon
);


// NO PRESSURE SPECIFIC
global.letterbox_margin = 40;
global.sideline_margin = 70;



instance_create_layer(not_set, not_set, "Player", obj_Player_Avatar);
instance_create_layer(not_set, not_set, "PLayer", obj_Player_Reticle);

instance_create_layer(not_set, not_set, "Player", obj_Player_Bullet_Manager);

instance_create_layer(0, -room_height + global.letterbox_margin, "Letterboxes", obj_Letterbox_Top);
instance_create_layer(0, room_height - global.letterbox_margin, "Letterboxes", obj_Letterbox_Bottom);
instance_create_layer(global.sideline_margin - 8, 0, "Letterboxes", obj_Sideline_Left);
instance_create_layer(room_width - global.sideline_margin, 0, "Letterboxes", obj_Sideline_Right);

instance_create_layer(not_set, not_set, "Controllers", obj_Distraction_Manager);