/// @description Step -> Letterbox collisions
// You can write your code in this editor
if (y + r >= obj_Letterbox_Bottom.y){
	vspeed = abs(vspeed) * -1;
}
else if (y - r <= obj_Letterbox_Top.y + room_height){
	vspeed = abs(vspeed);
}