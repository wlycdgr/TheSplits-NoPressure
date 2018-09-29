/// @description Incr frames, handle reaching of score thresholds
if (gs_playing == global.game.state) {
	if (target_points > points) {
		points += (target_points - points) / 10;
	}
	var distance_between_avatar_and_reticle =
		point_distance(
			obj_Player_Avatar.x, obj_Player_Avatar.y,
			obj_Player_Reticle.x, obj_Player_Reticle.y
		) -
		obj_Player_Avatar.rh + obj_Player_Reticle.rh;
		
	target_points += 0.01 * max(0, 100000 / max(1, distance_between_avatar_and_reticle ^ 2));
}
