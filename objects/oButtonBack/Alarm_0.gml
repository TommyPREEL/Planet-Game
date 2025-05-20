// Inherit the parent event
event_inherited();

if (room == rPlanet || room == rSettings) {
	room_goto(rMenu);
} else if (room == rKeybinds) {
	room_goto(rSettings);	
}