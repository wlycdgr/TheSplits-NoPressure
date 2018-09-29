/// @description Step -> Sideline collisions

var sideline;

if (x - r <= obj_Sideline_Left.x + 8){
	x = obj_Sideline_Left.x + 8 + r;	
	dead = true;
	sideline = obj_Sideline_Left;
}
else if (x + r >= obj_Sideline_Right.x){
	x = obj_Sideline_Right.x - r;
	dead = true;
	sideline = obj_Sideline_Right;
}

if (dead){
	sideline.wly_speed = max(
		-4,
		sideline.wly_speed - (sideline_push * charge_multiplier)
	);
}