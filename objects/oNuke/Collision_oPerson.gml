
if (is_active == false /* add check if hammer equiped */) {
	if (keyboard_check_pressed(vk_space) == true ){
		show_debug_message("test")
		is_active = true
		sprite_index = sNuke
	}
	// reenable energy generation
	// EXAMPLE CODE
	if meltdown_timer > 120 {
		AddToResource("Energy", 10);
	}
}