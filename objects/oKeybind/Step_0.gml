for (var key = ord("A"); key <= ord("Z"); key++) {
    SetKey(key)
}

for (var key = ord("0"); key <= ord("9"); key++) {
    SetKey(key)
}

if (keyboard_check_pressed(vk_up)) {
	SetKey(vk_up)
}	

if (keyboard_check_pressed(vk_down)) {
	SetKey(vk_down)
}

if (keyboard_check_pressed(vk_left)) {
	SetKey(vk_left)
}

if (keyboard_check_pressed(vk_right)) {
	SetKey(vk_right)
}

function SetKey(key) {
	if (keyboard_check_pressed(key)) {
        if (editing_key_index != -1) {
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
    }
}	