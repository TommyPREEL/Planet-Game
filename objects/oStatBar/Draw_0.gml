	var fill_percent = value / max_value;
	var fill_width = sprite_width * fill_percent;

	draw_set_color(c_lime);
	draw_rectangle(x, y, x + fill_width, y + sprite_height, false);
	//draw_self();

	draw_set_colour(c_white);
