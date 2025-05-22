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







/*
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
*/









if (resource == noone || bar_sprite_fill == noone || !sprite_exists(bar_sprite_fill)) {
    draw_text(x, y, "Barre invalide");
    return;
}

// 🔧 Paramètres de base
var ratio = clamp(resource.amount / resource.max_value, 0, 1);

// 🟦 Largeur totale que la barre remplie doit couvrir (manuelle, à adapter)
var fill_target_w = 136;

// 🧩 Taille réelle du sprite de tuile
var unit_w = sprite_get_width(bar_sprite_fill);
var unit_h = sprite_get_height(bar_sprite_fill);

// 🔍 Echelles dynamiques
var scale_fill  = (sprite_fill_scale  != undefined) ? sprite_fill_scale  : 1;
var scale_frame = (sprite_frame_scale != undefined) ? sprite_frame_scale : 1;

var tile_w = unit_w * scale_fill;
var tile_h = unit_h * scale_fill;

// 🔄 Largeur finale à remplir (en pixels)
var fill_px = fill_target_w * ratio;

var full_tiles = floor(fill_px / tile_w);
var leftover   = fill_px - (full_tiles * tile_w);

// 🎨 DESSIN DE LA BARRE DE REMPLISSAGE
for (var i = 0; i < full_tiles; i++) {
    var dx = x + i * tile_w;
    draw_sprite_ext(bar_sprite_fill, 0, dx+(scale_fill), y+(scale_fill), scale_fill, scale_fill, 0, c_white, 1);
}

// 🎯 Dernier morceau partiel si nécessaire
if (leftover > 0) {
    var dx = x + full_tiles * tile_w;
    var src_w = leftover / scale_fill;
    draw_sprite_part(bar_sprite_fill, 0, 0, 0, src_w, unit_h, dx, y);
}

// 🖼 DESSIN DU CADRE PAR-DESSUS
if (bar_sprite_frame != noone && sprite_exists(bar_sprite_frame)) {
    draw_sprite_ext(bar_sprite_frame, 0, x, y, scale_frame, scale_frame, 0, c_white, 1);
}

// 📝 TEXTE EN DESSUS (facultatif pour debug)
//draw_set_color(c_white);
//draw_text(x, y - 14, resource.name + ": " + string(floor(resource.amount)) + " / " + string(resource.max_value));
