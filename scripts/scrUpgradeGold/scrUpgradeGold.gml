function scrUpgradeGold(){

	if (GetResource("Gold").amount >= 1) {
		SubtractFromResource("Gold", 1);
		upgradeResourceBuilding("Gold mine");
		
	} else {
	    show_debug_message("Not enough gold!");
	}
}