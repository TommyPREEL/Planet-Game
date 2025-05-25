// Recalcule les coins (mêmes que dans Draw)
var x1 = x - button_w/2;
var y1 = y - button_h/2;
var x2 = x + button_w/2;
var y2 = y + button_h/2;

// Si le clic est à l'intérieur du rectangle
if (mouse_x >= x1 && mouse_x <= x2 && mouse_y >= y1 && mouse_y <= y2) {
	room_goto(rPlanet)
    room_restart();
	show_debug_message("Restart clicked!");
}