/// @description Init
global.input_tracker = instance_create_layer(0, 0, "Controllers", obj_Input_Tracker);
global.scoreboard = instance_create_layer(0, 0, "Controllers", obj_Scoreboard);

game_over_sliding_ribbon = instance_create_layer(
	window_width, sliding_ribbon_y, "SlidingRibbons", obj_Game_Over_Menu_Sliding_Ribbon
);

paused_sliding_ribbon = instance_create_layer(
	window_width, sliding_ribbon_y, "SlidingRibbons", obj_Paused_Sliding_Ribbon
);

// So we can pause the game if the Steam overlay
// has just been deactivated
steam_overlay_activated_this_step = false;
steam_overlay_activated_last_step = false;

// NO PRESSURE SPECIFIC
player_avatar = instance_create_layer(not_set, not_set, "Player", obj_Player_Avatar);
player_reticle = instance_create_layer(not_set, not_set, "PLayer", obj_Player_Reticle);

player_bullet_manager = instance_create_layer(not_set, not_set, "Player", obj_Player_Bullet_Manager);
player_bullet_manager.avatar = player_avatar;
player_bullet_manager.reticle = player_reticle;

letterbox_top = instance_create_layer(0, -room_height - 10, "Letterboxes", obj_Letterbox_Top);
letterbot_bottom = instance_create_layer(0, room_height + 10, "Letterboxes", obj_Letterbox_Bottom);

sideline_left = instance_create_layer(-18, 0, "Letterboxes", obj_Sideline_Left);
sideline_right = instance_create_layer(room_width + 10, 0, "Letterboxes", obj_Sideline_Right);

distraction_1 = instance_create_layer(room_width / 2, room_height * 1 / 3, "Instances", obj_Distraction);
distraction_2 = instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_Distraction);
distraction_3 = instance_create_layer(room_width / 2, room_height * 2 / 3, "Instances", obj_Distraction);