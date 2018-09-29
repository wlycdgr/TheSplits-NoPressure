/// @description Step -> Fire bullets

if (
	gamepad_button_check_pressed(0, _fire_button)
){
	var bullet = instance_create_layer(
		_shooter.x, _shooter.y, 
		"Bullets", 
		_bullet_type
	);
	
	bullet.direction = point_direction(
		_shooter.x, _shooter.y, 
		_target.x, _target.y
	);
	
	if (_shooter.fully_charged){
		bullet.charge_multiplier = fully_charged_bullet_charge_multiplier;
	}
	else {
		bullet.charge_multiplier = 
			(_shooter.radius - _shooter.min_radius) /
			(_shooter.radius_range);
	}
	
	_shooter.fully_charged = false;
	_shooter.cue_played = false;
	_shooter.radius = _shooter.min_radius;
}
