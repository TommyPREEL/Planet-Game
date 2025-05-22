function scrUpgradeTurret(){

	if (GetResource("Gold").amount >= 1) {
		SubtractFromResource("Gold", 1)
	} else {
	    show_debug_message("Not enough gold!");
	}
}