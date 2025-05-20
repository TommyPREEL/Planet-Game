function scrUpgradeEnergy(){

	if (GetResource("Gold").amount >= 1) {
		SubtractFromResource("Gold", 1)
		AddToResource("Energy", 20)
	} else {
	    show_debug_message("Not enough gold!");
	}
}