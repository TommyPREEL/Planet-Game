if (global.is_paused) {
    draw_set_alpha(0.6); // transparence (0.0 à 1.0)
    draw_sprite_stretched(
        sPauseBack,
        0,
        0,
		0,
        display_get_gui_width(),
        display_get_gui_height()
    );
    draw_set_alpha(1); // remet à la normale
}
