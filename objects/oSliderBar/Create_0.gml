dragging = false;
drag_offset_x = 0;

var barre = instance_nearest(x, y, oSlideBarMain);
if (barre != noone) {
    var marge = 2;
    var barre_gauche = barre.x - barre.sprite_width / 2;
    var barre_droite = barre.x + barre.sprite_width / 2;

    var limite_gauche = barre_gauche + marge;
    var limite_droite = barre_droite - marge;

    // Position du curseur en fonction du volume global actuel
    x = lerp(limite_gauche, limite_droite, global.master_volume);
    y = barre.y;
}

