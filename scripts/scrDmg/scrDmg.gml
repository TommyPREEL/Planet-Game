function scrDmg(_stat_name, _amount) {
    var stat_count = ds_list_size(global.stat_list);
    for (var i = 0; i < stat_count; ++i) {
        var stat = global.stat_list[| i];

        if (stat.name == _stat_name) {
            stat.value = max(0, stat.value - _amount);

            if (stat.type == "bar" && instance_exists(stat.bar_instance)) {
                with (stat.bar_instance) {
                    value = stat.value;
                }
            }
            global.stat_list[| i] = stat;

            break;
        }
    }
}
