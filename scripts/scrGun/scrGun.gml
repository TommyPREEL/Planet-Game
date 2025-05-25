function scrGun(){

	if (GetResource("Gold").amount >= 10) {		
		//add_to_inventory(oGun);
	} else {
	    show_debug_message("Not enough gold!");
	}
}