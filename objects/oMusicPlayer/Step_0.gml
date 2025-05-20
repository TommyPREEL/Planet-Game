// Ajuste le volume de la musique en fonction du volume global (0 à 1)
if (audio_is_playing(global.music_instance)) {
    audio_sound_gain(global.music_instance, global.master_volume, 0);
}

if (global.is_paused) {
	audio_pause_sound(global.music_instance);
} else {
	audio_resume_sound(global.music_instance);
}