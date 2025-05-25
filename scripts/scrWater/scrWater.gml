function scrWater(){
	
	if (GetResource("Gold").amount >= 2) {		
		//add_to_inventory(oWater);
	} else {
	    show_debug_message("Not enough gold!");
	}
}