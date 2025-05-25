function scrBoots(){
		if (GetResource("Gold").amount >= 5) {		
		//add_to_inventory(oBoots);
	} else {
	    show_debug_message("Not enough gold!");
	}
}