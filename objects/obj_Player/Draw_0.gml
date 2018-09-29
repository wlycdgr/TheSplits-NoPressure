/// @description Draw the avatar
draw_set_colour(color);
draw_ellipse(x - rh, y - rv, x + rh, y + rv, is_outline);

if (fully_charged){
	draw_ellipse(x - rh - 3, y - rv - 3, x + rh + 3, y + rv + 3, is_outline);
}