if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, self)) {
    if (sprite_index == sInventoryClose) {
        sprite_index = sInventoryOpen;
		just_opened = true;
		
        // Recalculer slot_rectangles comme dans Create, pour mettre à jour la position si nécessaire
        for (var i = 0; i < slot_count; i++) {
            var sx = slot0_x + i * (slot_width + slot_spacing);
            var sy = slot0_y;
            slot_rectangles[i] = [sx, sy, sx + slot_width, sy + slot_height];
        }
    } else {
        sprite_index = sInventoryClose;
    }
}

if (just_opened) {
	just_opened = false;
}


if (mouse_check_button_pressed(mb_right)) {
	remove_from_inventory(1);
}	
//    if (sprite_index == sInventoryClose) {
//        sprite_index = sInventoryOpen;
//        just_opened = true;
//    } else {
//        sprite_index = sInventoryClose;
//    }
//}