if (global.is_paused) {
    image_speed = 0;
    exit; // empêche de bouger ou de faire quoi que ce soit en pause
} else {
    image_speed = default_speed;
}


// Flèche de droite appuyée
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
	sprite_index = sPersonWalk // Active le sprint walk
	image_xscale = 1; // Tourne le sprite vers la droite
	
	// Faire tourner la planète dans le sens inverse
    with (oPlanet) {
        image_angle -= 2; // Tourne à gauche
    }
// Flèche de gauche appuyée
} else if (keyboard_check(vk_left) || keyboard_check(ord("Q"))) {
	sprite_index = sPersonWalk // Active le sprint walk
	image_xscale = -1; // Tourne le sprite vers la gauche
	
	// Faire tourner la planète dans le sens inverse
    with (oPlanet) {
        image_angle += 2; // Tourne à gauche
    }
} else {
	sprite_index = sPersonIdle // Active le sprint de base
}

if (keyboard_check_pressed(ord("E"))) {
    var nearest   = noone;
    var min_dist  = 9999999;               // start very large

    // scan every oBuildPoint
    with (oBuildPoint) {
        if (is_buildable) {
            var d = point_distance(x, y, oPerson.x, oPerson.y);

            if (d < DETECTION_RADIUS && d < min_dist) {
                min_dist = d;
                nearest  = id;
            }
        }
    }

    // accept only if something fell inside the radius
    if (nearest != noone) {
        global.selected_build_point = nearest;
        show_debug_message("Selected BP id " + string(nearest));
    } else {
        global.selected_build_point = noone;   // nothing close enough
        show_debug_message("No build-point in range");
    }
}