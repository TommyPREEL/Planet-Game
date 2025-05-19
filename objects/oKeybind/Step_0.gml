if (editing_key_index != -1) {
    var key = keyboard_lastkey;

    if (key != -1 && key != vk_escape) {
		 show_debug_message("Key pressed: " + string(key));  
        switch (editing_key_index) {
            case 0: global.key_left = key; break;
            case 1: global.key_right = key; break;
            case 2: global.key_add_structure = key; break;
            case 3: global.key_select_turret = key; break;
            case 4: global.key_select_house = key; break;
        }
        editing_key_index = -1;
    }
}