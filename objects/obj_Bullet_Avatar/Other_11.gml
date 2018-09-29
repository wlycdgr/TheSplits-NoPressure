/// @description Step -> Sideline collisions

var sideline;

if (x - r <= obj_Sideline_Left.x + 8){
	dead = true;
	sideline = obj_Sideline_Left;
}
else if (x + r >= obj_Sideline_Right.x){
	dead = true;
	sideline = obj_Sideline_Right;
}

if (dead){
	sideline.wly_speed = max(
		-4,
		sideline.wly_speed - 2
	);
}