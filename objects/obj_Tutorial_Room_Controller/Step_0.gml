///// @description Update string tweens, rotate strings, change screens
screen_counter += 1;
	
switch (screen_index) { 
case 0: //	INSTRUCTIONS screen
	if (screen_0_tween.paused) {
		if (keyboard_check_pressed(vk_anykey)) {
			screen_0_tween.paused = false;
		}
	}
	
	else if (
		(screen_counter > lead_time && screen_0_tween.off_screen) ||
		screen_0_tween.complete
	) {
		screen_0_tween.active = false;
		screen_1_tween.active = true;
		screen_counter = 0;
		screen_index = 1;
	}

	break;
		
case 1: // EXCELLENT WORK screen
	if (screen_1_tween.paused) {
		screen_1_tween.paused = false;
	}
		
	else if (
		(screen_counter > lead_time && screen_1_tween.off_screen) ||
		screen_1_tween.complete
	) {
		screen_1_tween.active = false;
		screen_2_tween.active = true;
		screen_counter = 0;
		screen_index = 2;
	}
		
	break;
		
case 2: // GOOD LUCK screen
	if (screen_2_tween.paused) {
		screen_2_tween.paused = false;
	}
		
	else if (
		(screen_counter > lead_time && screen_2_tween.off_screen) ||
		screen_2_tween.complete
	) {
		screen_2_tween.active = false;
		room_goto(r_MainMenu);
	}
		
	break;
}
