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


// Exemples d'utilisation
if (keyboard_check_pressed(ord("P"))) {
    SubtractFromResource("Energy", 20);
}

if (keyboard_check_pressed(ord("I"))) {
    AddToResource("Energy", 10);
}

if (keyboard_check_pressed(ord("O"))) {
    SubtractFromResource("HP", 1);
}

if (keyboard_check_pressed(vk_tab)) {
    show_stats = !show_stats;
}