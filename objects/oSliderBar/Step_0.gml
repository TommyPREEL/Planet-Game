var marge = 2;

var barre = instance_nearest(x, y, oSlideBarMain);
if (barre != noone) {
    var barre_gauche = barre.x - barre.sprite_width / 2;
    var barre_droite = barre.x + barre.sprite_width / 2;
    var barre_haut = barre.y - barre.sprite_height / 2;
    var barre_bas = barre.y + barre.sprite_height / 2;

    var limite_gauche = barre_gauche + marge;
    var limite_droite = barre_droite - marge;

    if (dragging) {
        // Stop drag si souris sort complètement de la barre (hors des bords réels, sans marge)
        if (mouse_x < barre_gauche || mouse_x > barre_droite) {
            dragging = false;
        } 
        else if (mouse_y >= barre_haut && mouse_y <= barre_bas) {
            // Déplacer le curseur, limité par marge
            x = clamp(mouse_x - drag_offset_x, limite_gauche, limite_droite);
            y = barre.y;
        }
    }

    // Calcul du volume (0 à 1) en fonction de la position du curseur
    var position_rel = (x - limite_gauche) / (limite_droite - limite_gauche);
    global.master_volume = clamp(position_rel, 0, 1);
}