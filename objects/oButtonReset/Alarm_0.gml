// Inherit the parent event
event_inherited();

index = -1; // Par sécurité

// Si "button_index" est transmis depuis oKeybind :
if (variable_instance_exists(id, "button_index")) {
    index = button_index;
}

// oButtonReset - Left Pressed Event
switch (index) {
    case 0: global.key_left = global.default_key_left; break;
    case 1: global.key_right = global.default_key_right; break;
    case 2: global.key_add_structure = global.default_key_add_structure; break;
    case 3: global.key_select_turret = global.default_key_select_turret; break;
    case 4: global.key_select_house = global.default_key_select_house; break;
}