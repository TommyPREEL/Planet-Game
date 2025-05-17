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
} else if(keyboard_check_pressed(ord("B"))) {
    room_goto(rPlanet);
} else {
	sprite_index = sPersonIdle // Active le sprint de base
}

if (place_meeting(x, y, oPlanet)) {
    var marker = instance_place(x, y, obj_town_marker);
    
    if (keyboard_check_pressed(ord("E"))) {
        // Store which town we’re entering
        global.current_town_id = marker.town_id;
        
        // Go to the town room
        room_goto(rTown);
    }
}

switch (global.current_town_id) {
    case "town1":
        // Load layout for town 1
        break;
    case "town2":
        // TBD
        break;
}

