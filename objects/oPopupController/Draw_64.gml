// Draw the popup
for (var i = 0; i < ds_list_size(global.popup_list); ++i) {
    var p = global.popup_list[| i];

    draw_set_alpha(p.alpha);
    draw_set_color(p.color);

    if (p.icon != noone) {
        draw_text(p.x, p.y, p.text);
		draw_sprite(p.icon, 0, p.x + (20*string_length(p.text)), p.y+8); // Dessine l'icone a 20px x le nombre de caracteres et 4px vers le bas
    } else {
        draw_text(p.x, p.y, p.text);
    }
}
draw_set_alpha(1);
draw_set_color(c_white);