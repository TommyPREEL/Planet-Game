if (keyboard_check_pressed(vk_space) && !volcano_extinguished && global.selected_item == oWater) {
    volcano_extinguished = true;
    eruption_started = false;
    image_index = 5;  // Frame 6 (index 0-based)
    image_speed = 0.1;
    show_debug_message("Volcan éteint par l'eau !");
	for (var i = 0; i < 6; i++) {
		if global.inventory[i] == global.selected_item {
			remove_from_inventory(i)
			break;
		}
	}
}