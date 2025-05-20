var mx = device_mouse_x_to_gui(0); // or just mouse_x if not using GUI layer
var my = device_mouse_y_to_gui(0); // same as above

for (var i = 0; i < array_length(shop_options); i++) {
    var opt = shop_options[i];
    if (mx > opt.x && mx < opt.x + option_width && my > opt.y && my < opt.y + option_height) {
        script_execute(opt.action);
        break;
    }
}
