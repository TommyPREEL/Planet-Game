function scrHeal(){

	if (GetResource("Gold").amount >= 2) {
		SubtractFromResource("Gold", 2)
	} else {
	    show_debug_message("Not enough gold!");
	}
}