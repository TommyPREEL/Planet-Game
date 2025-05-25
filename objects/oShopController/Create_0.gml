// In Create Event of 

shop_options = [
    {x: 120, y: 60, text: "Upgrade Energy - 1 coin", action: scrUpgradeEnergy},
    {x: 120, y: 100, text: "Upgrade Wood - 1 coin", action: scrUpgradeEnergy},
    {x: 120, y: 140, text: "Upgrade Turret - 1 coin", action: scrUpgradeTurret},
    {x: 120, y: 180, text: "Heal - 2 coins", action: scrHeal},
	{x: 120, y: 220, text: "Water - 2 coins", action: scrWater},
	{x: 120, y: 260, text: "Boots - 5 coins", action: scrBoots},
	{x: 120, y: 300, text: "Gun - 10 coins", action: scrGun},
//{x: 120, y: 320, text: "Leave Shop", action: scrLeaveShop}
];


show_debug_message(GetResource("Town").amount)
selected_index = 0;
line_height = 40;
x1 = 120;
y1 = 60;
