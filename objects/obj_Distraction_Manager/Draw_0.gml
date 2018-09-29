/// @description Insert description here

var d1;
var d2;
for (var i = 0; i < distractions_count; i++){
	draw_set_color(distractions_lines_color[i]);
	draw_set_alpha(line_alphas[i]);
	
	d1 = distractions[distractions_lines[i, 0]];
	d2 = distractions[distractions_lines[i, 1]];

	draw_line_width(d1.x, d1.y, d2.x, d2.y, 4);
	
	draw_set_alpha(1);
}