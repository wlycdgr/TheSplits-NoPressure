/// @description
distractions[0] = instance_create_layer(room_width / 2, room_height * 1 / 3, "Instances", obj_Distraction);
distractions[1] = instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_Distraction);
distractions[2] = instance_create_layer(room_width / 2, room_height * 2 / 3, "Instances", obj_Distraction);
distractions_count = 3;

distractions_lines[0, 0] = 0;
distractions_lines[0, 1] = 1;
distractions_lines[1, 0] = 0;
distractions_lines[1, 1] = 2;
distractions_lines[2, 0] = 1;
distractions_lines[2, 1] = 2;

distractions_lines_highlighted = [false, false, false];

regular_color = c_black;
highlighted_color = c_fuchsia;

distractions_lines_color = [regular_color, regular_color, regular_color];