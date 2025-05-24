global.selected_build_point = noone;
global.nearest_destroyable_building = noone;

global.player = {
	hp: 10,
	min_hp: 0,
	max_hp: 10,
	detection_radius: 20
}

globalvar game_score;
global.game_score = 0;
score_timer = 0;  // Compteur pour gérer les secondes

// Initialisation du dictionnaire des noms d'objets dans l'événement Create
global.object_names = ds_map_create();

ds_map_add(global.object_names, oTurret,    "Turret");
ds_map_add(global.object_names, oTown,      "Town");
ds_map_add(global.object_names, oNuke,      "Nuke");
ds_map_add(global.object_names, oGoldMine,  "Gold mine");
ds_map_add(global.object_names, oSawmill,   "Sawmill");