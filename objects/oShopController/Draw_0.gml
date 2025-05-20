draw_set_color(c_white);
draw_set_alpha(0.9);
draw_set_alpha(1);

// Draw each option and cursor
for (var i = 0; i < array_length(shop_options); i++) {
    var opt = shop_options[i];
    var my_y = y1 + i * line_height;

    if (i == selected_index) {
        draw_set_color(c_yellow);
        draw_text(x1 - 15, my_y, ">");
    }

    draw_set_color(c_white);
    draw_text(x1, my_y, string(i + 1) + ". " + opt.text);
}
