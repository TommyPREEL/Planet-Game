var px = oPerson.x;
var py = oPerson.y;

if (global.selected_build_point != noone) {
    draw_text(50, 50, "Press " + keyname(global.key_select_turret) + " to build Turret \n"
	          + "Press " + keyname(global.key_select_house) + " to build Town\n"
			  + "Press " + keyname(global.key_select_nuke) + " to build Nuke\n"
			  + "Press " + keyname(global.key_select_gold_mine) + " to build Gold mine\n"
			  + "Press " + keyname(global.key_select_sawmill) + " to build Sawmill\n"
			  );
}

// Affiche le texte de déstruction proche d'un batiment destructible
if (global.nearest_destroyable_building != noone) {
    draw_text(50, 50, "Press " + keyname(global.key_destroy_building) + " to destroy the building");
}

if (keyboard_check_pressed(global.key_select_turret) && global.selected_build_point != noone) {
	ManageInstance(oTurret);
}
if (keyboard_check_pressed(global.key_select_house) && global.selected_build_point != noone) {
	ManageInstance(oTown);
}
if (keyboard_check_pressed(global.key_select_nuke) && global.selected_build_point != noone) {
	ManageInstance(oNuke)
}
if (keyboard_check_pressed(global.key_select_gold_mine) && global.selected_build_point != noone) {
	ManageInstance(oGoldMine)
}
if (keyboard_check_pressed(global.key_select_sawmill) && global.selected_build_point != noone) {
	ManageInstance(oSawmill)
}

function ManageInstance(ObjectType)
{
	if (!ds_map_exists(global.object_names, ObjectType)) {
        show_message("Erreur : type d'objet non mappé !");
        return;
    }
	
    var name = ds_map_find_value(global.object_names, ObjectType);
	
	var build_point = global.selected_build_point;
	var planet = oPlanet; // à adapter si plusieurs planètes

	var angle = point_direction(planet.x, planet.y, build_point.x, build_point.y);
	var distance = point_distance(planet.x, planet.y, build_point.x, build_point.y);

	// Crée l'objet à l’angle et distance
	var obj = instance_create_layer(planet.x + lengthdir_x(distance, angle),
	                                planet.y + lengthdir_y(distance, angle),
	                                "Instances",
	                                ObjectType); // ou oTown selon le cas

	obj.name = name;

	if (ds_map_exists(global.resource_buildings, name)) {
			buildResourceBuilding(name);
		}

	obj.orbit_angle = angle;
	obj.orbit_distance = distance;
	obj.planet = planet; // référence à la planète
	instance_destroy(global.selected_build_point);
    global.selected_build_point = noone;
}

// Dessine le score
draw_set_color(c_white);
draw_text(500, 10, "Score : " + string(global.game_score));