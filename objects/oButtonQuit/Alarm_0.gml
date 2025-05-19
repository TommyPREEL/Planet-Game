// Inherit the parent event
event_inherited();

if (room == rMenu) {
    game_end(); // Quitte le jeu depuis le menu principal
}
else if (room == rPlanet && global.is_paused) {
    game_end(); // Quitte aussi depuis le menu pause
}
