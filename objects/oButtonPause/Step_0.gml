if (is_paused) {
    // Si l'utilisateur clique n'importe où
    if (mouse_check_button_pressed(mb_left)) {
        // Reprendre le jeu
        is_paused = false;
        sprite_index = sButtonPauseInactif;
        game_set_speed(room_speed, gamespeed_fps);
    }
}
