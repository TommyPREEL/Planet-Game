// --- auto-deselect if the target is gone or too far ---
if (global.selected_build_point != noone) {
    if (!instance_exists(global.selected_build_point)) {
        global.selected_build_point = noone;
    }
    else {
        var px = oPerson.x;
        var py = oPerson.y;

        var d  = point_distance(px, py,
                                global.selected_build_point.x,
                                global.selected_build_point.y);

        if (d > player.detection_radius) {
            global.selected_build_point = noone;
        }
    }
}

// Check la vie du joueur
if (player.hp <= 0) {
	show_message("You Died!"); // CHANGER PAR DEATH PAGE
    room_restart();
}