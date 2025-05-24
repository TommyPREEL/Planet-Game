var px = oPerson.x;
var py = oPerson.y;

if (global.selected_build_point != noone) {
    draw_text(50, 50, "Press " + keyname(global.key_select_turret) + " to build Turret\n" + "Press " + keyname(global.key_select_house) + " to build Town");
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
if (keyboard_check_pressed(ord("3")) && global.selected_build_point != noone) {
	ManageInstance(oNuke)
}

function ManageInstance(ObjectType)
{
	var build_point = global.selected_build_point;
	var planet = oPlanet; // à adapter si plusieurs planètes

	var angle = point_direction(planet.x, planet.y, build_point.x, build_point.y);
	var distance = point_distance(planet.x, planet.y, build_point.x, build_point.y);

	// Crée l'objet à l’angle et distance
	var obj = instance_create_layer(planet.x + lengthdir_x(distance, angle),
	                                planet.y + lengthdir_y(distance, angle),
	                                "Instances",
	                                ObjectType); // ou oTown selon le cas

	obj.orbit_angle = angle;
	obj.orbit_distance = distance;
	obj.planet = planet; // référence à la planète
	instance_destroy(global.selected_build_point);
    global.selected_build_point = noone;
}

// Dessine le score
draw_set_color(c_white);
draw_text(20, 20, "Score : " + string(global.game_score));