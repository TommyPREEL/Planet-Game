// Crée du texte avec la valeur des ressources
/*
draw_set_color(c_white);

for (var i = 0; i < ds_list_size(global.resource_list); ++i) {
    var r = global.resource_list[| i];
    draw_text(16, 16 + i * 20, r.name + ": " + string(floor(r.amount)) + " / " + string(r.max_value));
}
*/

var bar_w = 47 //sprite_width(sBar);   // Largeur max de la barre
var bar_h = 7 //sprite_height(sBar);  // Hauteur de la barre
var base_x = 16;
var base_y = 16;

for (var i = 0; i < ds_list_size(global.resource_list); ++i) {
    var r = global.resource_list[| i];
    var y_offset = base_y + i * (bar_h + 24);

    // Nom + valeur
    //draw_set_color(c_white);
    //draw_text(base_x, y_offset, r.name + ": " + string(floor(r.amount)) + " / " + string(r.max_value));

    // Barre dynamique
    var ratio = r.amount / r.max_value;
    var scaled_w = clamp(ratio, 0, 1) * bar_w;

    // Dessine uniquement la partie visible de la barre
    draw_sprite_part(sBar, 0, 0, 0, scaled_w, bar_h, base_x, y_offset + 20);
}