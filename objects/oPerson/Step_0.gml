if (global.is_paused) {
    image_speed = 0;
    exit; // empêche de bouger ou de faire quoi que ce soit en pause
} else {
    image_speed = default_speed;
}

// Flèche de droite appuyée
if (keyboard_check(global.key_right) || keyboard_check(ord("D"))) {
	sprite_index = sPersonWalk // Active le sprint walk
	image_xscale = 1; // Tourne le sprite vers la droite
	
	// Faire tourner la planète dans le sens inverse
    with (oPlanet) {
		if global.selected_item = oBoots {
			image_angle -= 4; //active le sprint
		} else {
			image_angle -= 2; // Tourne à droite
		}
    }
// Flèche de gauche appuyée
} else if (keyboard_check(global.key_left) || keyboard_check(ord("Q"))) {
	sprite_index = sPersonWalk // Active le sprint walk
	image_xscale = -1; // Tourne le sprite vers la gauche
	
	// Faire tourner la planète dans le sens inverse
    with (oPlanet) {
		if global.selected_item = oBoots {
			image_angle += 4; //active le sprint
		} else {
			image_angle += 2; // Tourne à gauche
		}	
    }
} else {
	sprite_index = sPersonIdle // Active le sprint de base
}

if (keyboard_check_pressed(global.key_add_structure)) {
    var nearest   = noone;
    var min_dist  = 9999999;               // start very large

    // scan every oBuildPoint
    with (oBuildPoint) {
        if (is_buildable) {
            var d = point_distance(x, y, oPerson.x, oPerson.y);

            if (d < player.detection_radius && d < min_dist) {
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

// Détection continue du bâtiment à proximité
global.nearest_destroyable_building = noone;
var min_dist = 999999;
var found_building = false;

with (oBuildingDestroyable) {
    var d = point_distance(x, y, oPerson.x, oPerson.y);
    if (d < player.detection_radius && d < min_dist) {
        min_dist = d;
        global.nearest_destroyable_building = id;
        found_building = true;
    }
}

if (!found_building) {
    global.nearest_destroyable_building = noone; // Assure la réinitialisation
}

// Si la touche destroy est pressé, chercher un bâtiment à proximité et le détruire
if (keyboard_check_pressed(global.key_destroy_building)) {
    var min_dist = 999999;
	var bx = noone;
	var by = noone;

    if (global.nearest_destroyable_building != noone) {
        with (global.nearest_destroyable_building) {
			bx = x;
            by = y;
			bname = name;
			
			if (ds_map_exists(global.resource_buildings, bname)) {
				destroyResourceBuilding(bname);
			}
			
            instance_destroy();
        }
		
		var instance = instance_create_layer(bx, by, "Instances", oBuildPoint); // refait spawn un build point
		instance.image_xscale = 0.55;
		instance.image_yscale = 0.53;
		global.nearest_destroyable_building = noone;
        show_debug_message("Building destroyed.");
    } else {
        show_debug_message("No buildings nearby");
    }
}

if (shoot_cooldown > 0) {
    shoot_cooldown -= 1;
}

// Shooting input
if (mouse_check_button_pressed(mb_left) && shoot_cooldown <= 0 && global.selected_item == oGun) {
    shoot_cooldown = 10; // Frames between shots

    var angle = point_direction(x, y, mouse_x, mouse_y);
    var bullet = instance_create_layer(x, y, "Instances", oBulletPlayer);
    bullet.direction = angle;
}