if (!window_get_fullscreen()) {
	sprite_index = sCheckBoxEmpty;
	show_debug_message("hello");
} else {
	sprite_index = sCheckBoxOK;
}