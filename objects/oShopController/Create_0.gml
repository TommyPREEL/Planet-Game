// In Create Event of 

shop_options = [
    {x: 120, y: 120, text: "Upgrade Energy - 1 coin", action: scrUpgradeEnergy},
    {x: 120, y: 160, text: "Upgrade Wood - 1 coin", action: scrUpgradeEnergy},
    {x: 120, y: 200, text: "Upgrade Turret - 1 coin", action: scrUpgradeTurret},
    {x: 120, y: 240, text: "Heal - 2 coins", action: scrHeal},
	{x: 120, y: 280, text: "Planet Shield - 3 coins", action: scrShield}
//{x: 120, y: 320, text: "Leave Shop", action: scrLeaveShop}
];


show_debug_message(GetResource("Town").amount)
selected_index = 0;
line_height = 40;
x1 = 120;
y1 = 120;
