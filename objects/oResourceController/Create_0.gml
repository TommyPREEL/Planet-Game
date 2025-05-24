globalvar resource_list;
globalvar resource_buildings;
global.resource_list = ds_list_create();
global.resource_buildings = ds_map_create();
show_stats = false;

// Création des ressources
AddResource("Gold", 100, 9999, true, 0, sGold);
AddResource("Energy", 50, 1000, true, 0, sEnergy);
AddResource("Wood", 50, 1000, true, 0, sWood);
AddResource("HP", 10, 10, false, 0, sHP);
AddResource("Event", 0, 1000, true, 0.5, sEvent);
AddResource("Town",0 , 5, false, 0, sTown);

// Création des batiments de ressources
createResourceBuilding("Nuke", "Energy", 10, 5, 0.1);
createResourceBuilding("Gold mine", "Gold", 10, 5, 0.1); // Bâtiment lié à la ressource "gold", niveau max 10, 5 bâtiments max
createResourceBuilding("Sawmill", "Wood", 10, 5, 0.2);