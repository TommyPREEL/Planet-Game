if (keyboard_check_pressed(ord("R"))) {
	show_debug_message("hello");
    with (oEventController) TriggerRandomEvent();
}

for (var i = 0; i < ds_list_size(event_list); ++i) {
    var ev = event_list[| i];
    if (ev.cd_left > 0) ev.cd_left -= 1;
}