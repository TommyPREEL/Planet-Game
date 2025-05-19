// Initialise le volume global si nécessaire
if (!variable_global_exists("master_volume")) {
    global.master_volume = 0.5; // Volume à 50% par défaut
    audio_master_gain(global.master_volume); // Version compatible
}