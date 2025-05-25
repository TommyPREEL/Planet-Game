// Calcul des coins du rectangle
var x1 = x - button_w/2;
var y1 = y - button_h/2;
var x2 = x + button_w/2;
var y2 = y + button_h/2;

// Fond du bouton
draw_set_color(c_black);
draw_rectangle(x1, y1, x2, y2, false);

// Bordure intérieure
draw_set_color(c_gray);
draw_rectangle(x1+2, y1+2, x2-2, y2-2, false);

// Texte centré
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, "Restart");