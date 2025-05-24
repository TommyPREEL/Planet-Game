if (visible_crosshair && global.selected_item == oGun) {
    draw_sprite(sCrossHair, 0, x, y);
	window_set_cursor(cr_none);
} else {
    window_set_cursor(cr_default);
}