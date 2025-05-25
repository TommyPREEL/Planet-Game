global.is_paused = !global.is_paused;

if (global.is_paused) {
    sprite_index = sButtonPauseActif;
} else {
    sprite_index = sButtonPauseInactif;
}