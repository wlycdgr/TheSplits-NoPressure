/// @description Draw the credits

switch(screen_index) {
case 0: // INSTRUCTIONS screen
	scr_Splitsfont_Draw_String(
		instructions1_string,
		instructions1_string_x_path.value, instructions1_string_y
	);

	scr_Splitsfont_Draw_String(
		instructions2_string,
		instructions2_string_x_path.value, instructions2_string_y
	);
	
	break;
	
case 1: // EXCELLENT WORK screen
	scr_Splitsfont_Draw_String(
		excellent_work_string,
		excellent_work_string_x_path.value, excellent_work_string_y
	);
	
	break;
	
case 2: // GOOD LUCK screen
	scr_Splitsfont_Draw_String(
		good_luck_string,
		good_luck_string_x_path.value, good_luck_string_y
	);
	
	break;
	
default:
	break;
}