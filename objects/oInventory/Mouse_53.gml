if (sprite_index == sInventoryOpen && !just_opened) {
    for (var i = 0; i < slot_count; i++) {
        var rect = slot_rectangles[i];

        if (point_in_rectangle(mouse_x, mouse_y, rect[0], rect[1], rect[2], rect[3])) {
            var inst = inventory_instances[i];
            if (instance_exists(inst) && global.selected_item = "") {
                global.selected_item = inventory[i];
                show_debug_message("Objet sélectionné : " + object_get_name(global.selected_item));
			} else if (instance_exists(inst) && global.selected_item != "") {
				show_debug_message("Objet désélectionné : " + object_get_name(global.selected_item));
				global.selected_item = "";
            }
        }
    }
}