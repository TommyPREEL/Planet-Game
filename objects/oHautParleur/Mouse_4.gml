if (global.master_volume != 0) {
	global.volume = global.master_volume
	global.master_volume = 0;
} else {
	global.master_volume = global.volume;
}