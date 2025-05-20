function scrUpdateStat(_name, _new_value) {
    for (var i = 0; i < ds_list_size(global.stat_list); ++i) {
        var stat = global.stat_list[| i];

        if (stat.name == _name) {
            stat.value = clamp(_new_value, 0, stat.max_value);

            if (stat.type == "bar" && instance_exists(stat.bar_instance)) {
                stat.bar_instance.scrSetValue(stat.value);
            }

            break;
        }
    }
}