/// @description Capture and apply analog stick input
// You can write your code in this editor

// Grow 
if (radius < max_radius){
	radius += grow_per_frame;
	fully_charged = false;
	
	if (radius >= max_radius){
		radius = max_radius;
		fully_charged = true;
		
		scr_Play_SFX(snd_fx_SoftPop);
	}
}

// Move 
xv = gamepad_axis_value(0, input_haxis);
yv = gamepad_axis_value(0, input_vaxis);

angle = point_direction(0, 0, xv, yv);
mag_point = point_distance(0, 0, xv, yv);

if (mag_point > 1){
	mag_point = 1;
}

move_towards_point(
	x + xv*100,
	y + yv*100,
	mag_point * wly_speed
);