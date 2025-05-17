// Flèche de droite appuyée
if (keyboard_check(vk_right)) {
	sprite_index = sPersonWalk // Active le sprint walk
	image_xscale = 1; // Tourne le sprite vers la droite
	
	// Faire tourner la planète dans le sens inverse
    with (oPlanet) {
        image_angle -= 2; // Tourne à gauche
    }
// Flèche de gauche appuyée
} else if (keyboard_check(vk_left)) {
	sprite_index = sPersonWalk // Active le sprint walk
	image_xscale = -1; // Tourne le sprite vers la gauche
	
	// Faire tourner la planète dans le sens inverse
    with (oPlanet) {
        image_angle += 2; // Tourne à gauche
    }
} else {
	sprite_index = sPersonIdle // Active le sprint de base
}