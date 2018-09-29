/// @description Draw the avatar

draw_set_colour(color);

draw_circle(x, y, radius, is_outline);

if (fully_charged){
	draw_circle(x, y, radius + 3, true);
}