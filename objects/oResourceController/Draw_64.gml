draw_set_color(c_white);

for (var i = 0; i < ds_list_size(resource_list); ++i) {
    var r = resource_list[| i];
    draw_text(16, 16 + i * 20, r.name + ": " + string(floor(r.amount)) + " / " + string(r.max_value));
}