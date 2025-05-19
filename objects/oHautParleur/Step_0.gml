// Changer le sprite selon le volume
var vol = global.master_volume;

if (vol == 0) {
    sprite_index = sAudioMute;
}
else if (vol < 0.3) {
    sprite_index = sAudioLvl1;
}
else if (vol < 0.6) {
    sprite_index = sAudioLvl2;
}
else {
    sprite_index = sAudioLvl3;
}