// Generation de ressources
for (var i = 0; i < ds_list_size(global.resource_list); ++i) {
    var r = global.resource_list[| i];

    if (r.regen) {
        r.amount = clamp(r.amount + r.regen_rate, 0, r.max_value);
    }
}

// Debug
for (var i = 0; i < ds_list_size(global.resource_list); ++i) {
    var r = global.resource_list[| i];
    draw_text(16, 16 + i * 16, r.name + ": " + string(floor(r.amount)));
}


if (keyboard_check_pressed(ord("P"))) {
    SubtractFromResource("Stamina", 20);
}