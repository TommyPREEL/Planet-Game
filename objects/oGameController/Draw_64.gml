var px = oPerson.x;
var py = oPerson.y;

if (global.selected_build_point != noone) {
    draw_text(50, 50, "Press 1 to build Tower\nPress 2 to build Town");
}

if (keyboard_check_pressed(ord("1")) && global.selected_build_point != noone) {
	instance_create_layer(px, py - 16, "Instances", oTown);
    instance_destroy(global.selected_build_point);
    global.selected_build_point = noone;
}
if (keyboard_check_pressed(ord("2")) && global.selected_build_point != noone) {
    instance_create_layer(global.selected_build_point.x, global.selected_build_point.y, "Instances", oTurret);
    global.selected_build_point = noone;
}