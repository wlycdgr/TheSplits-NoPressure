/// @description Capture and apply analog stick input
// You can write your code in this editor

// Grow 
if (rh < max_radius){
	rh += 0.2;
	if (rh >= max_radius){
		rh = max_radius;
	}
}

if (rv < max_radius){
	rv += 0.2;
	if (rv >= max_radius){
		rv = max_radius;
	}
}

if (rv == rh == max_radius){
	fully_charged = true;
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