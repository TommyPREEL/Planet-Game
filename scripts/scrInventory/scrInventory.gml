function remove_from_inventory(index) {
	var layer_to_destroy = global.inventory[index]
	with (layer_to_destroy) {
		instance_destroy()	
	}
	global.inventory[index] = noone ;
}

function add_to_inventory(item_obj) {
    for (var i = 0; i < 6; i++) {
        if (global.inventory[i] == noone) {
            global.inventory[i] = item_obj;
            show_debug_message("Ajouté : " + string(item_obj));
            return true;
        }
    }
    show_debug_message("Inventaire plein !");
    return false;
}
