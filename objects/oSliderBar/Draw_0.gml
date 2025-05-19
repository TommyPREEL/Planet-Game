// Afficher d'abord le sprite normalement
draw_self();

// Trouve la barre liée
var barre = instance_nearest(x, y, oSlideBarMain);
var barre_gauche = barre.x - barre.sprite_width / 2;
var barre_droite = barre.x + barre.sprite_width / 2;

// Prends en compte la marge de 2 pixels
var limite_gauche = barre_gauche + 2;
var limite_droite = barre_droite - 2;

// Calcul du pourcentage de la position du curseur sur la barre en fonction des limites réelles
var position_rel = (x - limite_gauche) / (limite_droite - limite_gauche);
if (position_rel < 0.01) {
    position_rel = 0;
} else if (position_rel > 0.99) {
    position_rel = 1;
}
var pourcentage = string(round(position_rel * 100)) + "%";

// Affichage du pourcentage en haut à gauche (tu peux changer la position)
draw_set_color(c_white);
draw_set_font(-1); // Utilise la font par défaut, ou choisis la tienne
draw_text(20, 20, "Volume : " + pourcentage);
