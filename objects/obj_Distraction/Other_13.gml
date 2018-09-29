/// @description Step -> Avatar collisions

if (point_distance(x, y, obj_Player_Avatar.x, obj_Player_Avatar.y) <= r + obj_Player_Avatar.radius){
	obj_Player_Avatar.dead = true;
}