/*
if (resource == noone || bar_sprite_fill == noone) {
    draw_text(x, y, "Pas de ressource ou sprite");
    return;
}

var ratio = clamp(resource.amount / resource.max_value, 0, 1);
var bar_w = 100//sprite_width(bar_sprite_fill);
var bar_h = 100//sprite_height(bar_sprite_fill);
var scaled_w = bar_w * ratio;

// Fond facultatif
draw_set_color(c_black);
draw_rectangle(x, y, x + bar_w, y + bar_h, false);

// Barre de remplissage
draw_sprite_part(bar_sprite_fill, 0, 0, 0, scaled_w, bar_h, x, y);

// Cadre par-dessus (si défini)
if (bar_sprite_frame != noone) {
    draw_sprite(bar_sprite_frame, 0, x, y);
}

// Texte
draw_set_color(c_white);
draw_text(x, y - 16, resource.name + ": " + string(floor(resource.amount)) + " / " + string(resource.max_value));
*/

if (resource == noone || bar_sprite_fill == noone || !sprite_exists(bar_sprite_fill)) {
    draw_text(x, y, "Barre invalide");
    return;
}

// Valeurs fixes
var ratio     = clamp(resource.amount / resource.max_value, 0, 1);
var bar_w     = 500; // largeur de la barre totale TODO a rendre dynamique
var bar_h     = 100;  // hauteur du sprite TODO a rendre dynamique
var spr_w     = 1;  // largeur du sprite

if (bar_sprite_frame != noone) {
    draw_sprite(bar_sprite_frame, 0, x, y);

}

// Nombre de répétitions à dessiner selon la valeur actuelle
var fill_w = floor(bar_w * ratio);
var repeat = ceil(fill_w / spr_w);

// Dessiner plusieurs fois le sprite
for (var i = 0; i < repeat; i++) {
    var draw_x = x + (i * spr_w);

    // On ne dépasse pas la largeur à remplir
    if (draw_x + spr_w > x + fill_w) break;

    draw_sprite(bar_sprite_fill, 0, draw_x, y);
}