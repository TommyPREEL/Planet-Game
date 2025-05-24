show_debug_message("Meteor collided with the planet!");

if (instance_exists(oCameraController)) {
	var cam = instance_find(oCameraController, 0);
	if (cam != noone) {
	    cam.shake_magnitude = 6;
	    cam.shake_duration = 20;
	    cam.shake_timer = 20;
	}
}

if (global.master_volume > 0) {
    var snd_instance = audio_play_sound(sMeteorCrash, 1, false);
    audio_sound_set_track_position(snd_instance, 4.17);
    audio_sound_gain(snd_instance, global.master_volume, 0);
} else {
    // Volume 0, ne joue pas le son
    // Ou ne fait rien
}

instance_destroy();