function scrUpgradeEnergy(){

	if (GetResource("Gold").amount >= 1) {
		SubtractFromResource("Gold", 1)
		upgradeResourceBuilding("Nuke");
		
	} else {
	    show_debug_message("Not enough gold!");
	}
}