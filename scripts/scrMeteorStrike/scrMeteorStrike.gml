function scrMeteorStrike() {
    show_debug_message("Meteor strike hits the planet!");
	for (var i = 0; i < 10; i++) { 
	    var surface_x = random(room_width);
	    var surface_y = room_height - 100 + random_range(-20, 20);

	    var start_x = surface_x + random_range(-200, 200);
	    var start_y = -200;

	    var meteor = instance_create_layer(start_x, start_y, "Instances", oMeteor);
	    meteor.target_x = surface_x;
	    meteor.target_y = surface_y;
	    meteor.image_angle = point_direction(start_x, start_y, surface_x, surface_y);
	}

    show_debug_message("Spawning meteor from (" + string(start_x) + ", " + string(start_y) + ") to (" + string(surface_x) + ", " + string(surface_y) + ")");
}