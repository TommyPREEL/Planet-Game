
if (is_active == false /* add check if hammer equiped */) {
	if (keyboard_check_pressed(vk_space) == true){
		is_active = true
		sprite_index = sNuke
		draw_self()
		meltdown_timer = 0
		activateResourceBuilding("Nuke");
	}
}