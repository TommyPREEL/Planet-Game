for (var i = ds_list_size(global.popup_list) - 1; i >= 0; --i) {
    var p = global.popup_list[| i];

    p.y += p.vy;
    p.alpha -= 1 / p.lifespan;

    if (p.alpha <= 0) {
        ds_list_delete(global.popup_list, i);
    }
}