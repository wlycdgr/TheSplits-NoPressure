/// @description Insert description here
// You can write your code in this editor
// Collide with Letterboxes
if ((y - radius) <= (obj_Letterbox_Top.y + room_height)){
	dead = true;
}
else if ((y + radius) >= obj_Letterbox_Bottom.y){
	dead = true;
}


// Collide with Sidelines
else if ((x - radius) <= (obj_Sideline_Left.x + 8)){
	dead = true;
}
else if ((x + radius) > obj_Sideline_Right.x){
	dead = true;
}