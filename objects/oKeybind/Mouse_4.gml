var col_modify_x  = room_width * 0.65;
var col_reset_x   = room_width * 0.80;
var base_y        = room_height * 0.2;
var line_height   = 40;

var binds_count = 5;

var mx = device_mouse_x_to_gui(0);  // Adapté à l'interface
var my = device_mouse_y_to_gui(0);

var mod_w = string_width("Modifier");
var reset_w = string_width("Réinitialiser");
var text_h = string_height("T");

for (var i = 0; i < binds_count; i++) {
    var y_line = base_y + i * line_height;

    // Clic sur "Modifier"
    if (mx > col_modify_x && mx < col_modify_x + mod_w && my > y_line && my < y_line + text_h) {
        editing_key_index = i;
        show_debug_message("Modifier clicked on index " + string(i));
        return;  // Stop pour ne pas traiter d'autres clics
    }

    // Clic sur "Réinitialiser"
    if (mx > col_reset_x && mx < col_reset_x + reset_w && my > y_line && my < y_line + text_h) {
        switch (i) {
            case 0: global.key_left = global.default_key_left; break;
            case 1: global.key_right = global.default_key_right; break;
            case 2: global.key_add_structure = global.default_key_add_structure; break;
            case 3: global.key_select_turret = global.default_key_select_turret; break;
            case 4: global.key_select_house = global.default_key_select_house; break;
        }
        show_debug_message("Réinitialiser clicked on index " + string(i));
        return;
    }
}
