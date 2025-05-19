// Pour que l'objet ne soit pas détruit en changeant de room (optionnel)
persistent = true;

// Lance la musique seulement si elle n'est pas déjà lancée
if (!variable_global_exists("music_instance") || !audio_is_playing(global.music_instance)) {
    global.music_instance = audio_play_sound(sBackAudio, global.master_volume, true); // Loop = true
}