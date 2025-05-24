function scrUpgradeWood(){

	if (GetResource("Gold").amount >= 1) {
		SubtractFromResource("Gold", 1);
		upgradeResourceBuilding("Sawmill");
		
	} else {
	    show_debug_message("Not enough gold!");
	}
}