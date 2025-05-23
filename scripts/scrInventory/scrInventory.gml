function remove_from_inventory(index) {
	var layer_to_destroy = global.inventory[index]
	with (layer_to_destroy) {
		instance_destroy()	
	}
	global.inventory[index] = noone ;
}
