// Move selection up/down
if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
    selected_index = (selected_index + 1) mod array_length(shop_options);
}

if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
    selected_index = (selected_index - 1 + array_length(shop_options)) mod array_length(shop_options);
}

// Confirm selection
if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
    var selected = shop_options[selected_index];
    script_execute(selected.action);
}
if (keyboard_check_pressed(vk_escape)) {
	room_goto(rPlanet);
}