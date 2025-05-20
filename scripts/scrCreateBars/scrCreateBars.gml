function scrCreateBars() {
    for (var i = 0; i < ds_list_size(global.stat_list); ++i) {
        var stat = global.stat_list[| i];

        if (stat.type == "bar") {
            var inst = instance_create_layer(stat.position_x, stat.position_y, "Instances", oStatBar);
            inst.sprite_index = stat.sprite;
            inst.value = stat.value;
            inst.max_value = stat.max_value;
            stat.bar_instance = inst;
        }
    }
}

