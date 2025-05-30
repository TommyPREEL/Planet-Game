event_inherited();

// 1. Dessiner le bouton (l’objet lui-même)
draw_self();

// 2. Affichage seulement si l'inventaire est ouvert
if (sprite_index == sInventoryOpen) {
    // a. Dessiner le sprite sInventory à la bonne position
    var offset_y = sprite_get_height(sInventory) / 2;
    draw_sprite_ext(sInventory, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
	
    // Dessiner les cases rouges (facultatif, pour debug)
    //draw_set_color(c_red);
    //for (var i = 0; i < slot_count; i++) {
    //    var rect = slot_rectangles[i];
    //    draw_rectangle(rect[0], rect[1], rect[2], rect[3], false);
    //}
    draw_set_color(c_white);

	// b. Pour chaque objet dans l’inventaire, soit mis dans une case
	for (var i = 0; i < slot_count; i++) {
	    var rect = slot_rectangles[i];
	    var obj_type = global.inventory[i];
		
			if (global.inventory[i] != noone && inventory_instances[i] == noone) {
			    var rect = slot_rectangles[i];
			    var cx = (rect[0] + rect[2]) / 2;
			    var cy = rect[3]; // bas de la case

			    var inst = instance_create_layer(cx - 30, cy - 65, layer, global.inventory[i]);
			    inst.depth = -100;
			    inventory_instances[i] = inst;
				
				show_debug_message(object_get_name(inventory_instances[i].object_index));
				//show_debug_message(slot_rectangles[i])		
			}
	}
} else {
	// Détruire les objets affichés
	for (var i = 0; i < slot_count; i++) {
	    if (inventory_instances[i] != noone && instance_exists(inventory_instances[i])) {
	        with (inventory_instances[i]) {
	            instance_destroy();
	        }
	        inventory_instances[i] = noone;
	    }
	}
}


if (sprite_index == sInventoryOpen && !just_opened) {
    for (var i = 0; i < slot_count; i++) {
        var rect = slot_rectangles[i];
        var inst = inventory_instances[i];
        if (point_in_rectangle(mouse_x, mouse_y, rect[0], rect[1], rect[2], rect[3]) && mouse_check_button(mb_left)) == true {
			global.selected_item = global.inventory[i];
        }
		else if (global.selected_item == global.inventory[i] && instance_exists(inst))
		{
			draw_set_color(c_red);
			var rect = slot_rectangles[i];
			draw_rectangle(rect[0], rect[1], rect[2], rect[3], false);
			draw_set_color(c_white);
		}
    }
}
