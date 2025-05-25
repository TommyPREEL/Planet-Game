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
	room_goto(rGameOver);
}

// Compte le score
score_timer += 1;

if (score_timer >= room_speed) { // room_speed = nombre de steps par seconde
    global.game_score += 1;
    score_timer = 0;
}

if (!variable_struct_exists(player, "hp")) {
    // 2) On récupère la ressource HP
    var res = GetResource("HP");
    // 3) Si la ressource existe bien...
    if (res != noone) {
        // 4) On initialise player.hp et player.max_hp
        player.hp     = res.amount;
        player.max_hp = res.max_value;
    }
}