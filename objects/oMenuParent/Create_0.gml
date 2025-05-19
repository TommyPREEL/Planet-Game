// Initialise le volume global si nécessaire
if (!variable_global_exists("master_volume")) {
    global.master_volume = 0.5; // Volume à 50% par défaut
    audio_master_gain(global.master_volume); // Version compatible
}

global.is_paused = false;

global.key_right = vk_right;  // flèche droite
global.key_left = vk_left;    // flèche gauche
global.key_add_structure = ord("E");
global.key_select_turret = ord("1");
global.key_select_house = ord("2");
