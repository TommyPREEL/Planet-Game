if (instance_exists(planet_id)) {
    var c = dcos(planet_id.image_angle);
    var s = dsin(planet_id.image_angle);

    // Apparition progressive
    if (appear_progress < 1) {
        appear_progress = min(1, appear_progress + appear_speed);
        current_distance = lerp(current_distance, target_distance, appear_progress);
    }

    var dir = point_direction(0, 0, x0, y0);
    var x_off = lengthdir_x(current_distance, dir);
    var y_off = lengthdir_y(current_distance, dir);

    x = planet_id.x + x_off * c - y_off * s;
    y = planet_id.y + x_off * s + y_off * c;

    image_angle = point_direction(x, y, planet_id.x, planet_id.y) + 90;
}

// === Contrôle animation arrêtée à frame 3 ===
if (!animation_ready && floor(image_index) >= 2) {
    image_index = 2;
    image_speed = 0;
    animation_ready = true;
    show_debug_message("Animation prête, timer lancé");
}

// === Timer en attente d'éruption ===
if (animation_ready && !volcano_extinguished && !eruption_started) {
    eruption_timer++;

    //show_debug_message("Timer volcan : " + string(eruption_timer));

    if (eruption_timer >= eruption_duration) {
        show_debug_message("Début de l'éruption !");
        image_speed = 0.1; // Relance l’animation
        eruption_started = true;
    }
}

// === Fin de l’éruption (frame 6 atteinte) ===
if (image_index >= 5.9) {
    show_debug_message("Suppression du volcan");
    instance_destroy(id);
}