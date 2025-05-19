// Trouve le curseur (oSliderBar)
var curseur = instance_nearest(x, y, oSliderBar);

// Calcule les limites de la barre
var barre_gauche = x - sprite_width / 2;
var barre_droite = x + sprite_width / 2;

// Calcule la nouvelle position du curseur en clampant à l’intérieur de la barre
curseur.x = clamp(mouse_x, barre_gauche, barre_droite);
curseur.y = y;