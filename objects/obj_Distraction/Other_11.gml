/// @description Step -> Sideline collisions
if (x - r <= obj_Sideline_Left.x + 8){
	hspeed = abs(hspeed);
}
else if (x + r >= obj_Sideline_Right.x){
	hspeed = abs(hspeed) * -1;
}