show_debug_message("Meteor collided with the planet!");

if (instance_exists(oCameraController)) {
	var cam = instance_find(oCameraController, 0);
	if (cam != noone) {
	    cam.shake_magnitude = 6;
	    cam.shake_duration = 20;
	    cam.shake_timer = 20;
	}
}
var snd = sMeteorCrash;
audio_sound_set_track_position(snd, 4.17);
audio_play_sound(snd, 1, false);
instance_destroy();