/// @description Step -> Letterbox collisions

var letterbox;

if (y - r <= obj_Letterbox_Top.y + room_height){
	dead = true;
	letterbox = obj_Letterbox_Top;
}
else if (y + r >= obj_Letterbox_Bottom.y){
	dead = true;
	letterbox = obj_Letterbox_Bottom;
}

if (dead){
	letterbox.wly_speed = max(
		-1,
		letterbox.wly_speed - letterbox_push
	);
}