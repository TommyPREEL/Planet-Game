// Flèche de droite appuyée
if (keyboard_check(vk_right)) {
	sprite_index = sPersonWalk // Active le sprint walk
	image_xscale = 1; // Tourne le sprite vers la droite
	
	// Faire tourner la planète dans le sens inverse
    with (oPlanet) {
        image_angle += 2; // Tourne à gauche
    }
// Flèche de gauche appuyée
} else if (keyboard_check(vk_left)) {
	sprite_index = sPersonWalk // Active le sprint walk
	image_xscale = -1; // Tourne le sprite vers la gauche
	
	// Faire tourner la planète dans le sens inverse
    with (oPlanet) {
        image_angle -= 2; // Tourne à gauche
    }
} else {
	sprite_index = sPersonIdle // Active le sprint de base
}

// Interaction
var interact_obj = instance_nearest(x, y, oLocation);
if (interact_obj != noone && point_distance(x, y, interact_obj.x, interact_obj.y) < 32) {
    // Si le joueur appuie sur 'E'
    if (keyboard_check_pressed(ord("E"))) {
    var town = instance_create_layer(x, y, "Instances", oTown); // Crée la maison à la position du joueur

    // Calculer et stocker sa position RELATIVE à la planète
    var planet = instance_find(oPlanet, 0); // Si tu n’as qu’une seule planète

    town.relative_dist = point_distance(planet.x, planet.y, town.x, town.y);
    town.relative_angle = point_direction(planet.x, planet.y, town.x, town.y);
    town.planet_id = planet.id; // Mémorise la planète à laquelle elle est attachée
}
}