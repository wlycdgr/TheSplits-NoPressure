/// @description Step -> Reticle collisions

if (point_distance(x, y, obj_Player_Reticle.x, obj_Player_Reticle.y) <= r + obj_Player_Reticle.radius){
	obj_Player_Reticle.dead = true;
}