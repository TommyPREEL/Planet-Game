function AddResourcePopup(_text, _x, _y, _color, _icon, _duration) {
    var popup = {
        text     : _text,       // Texte du popup (ex: "-5 Energy")
        x        : _x,          // Position horizontale d'affichage
        y        : _y,          // Position verticale d'affichage
        vx       : 0,           // Vitesse horizontale (optionnel, ici fixe)
        vy       : -0.5,        // Vitesse verticale (popup qui flotte vers le haut)
        alpha    : 1,           // Opacité initiale (1 = opaque, 0 = transparent)
        color    : _color,      // Couleur du texte
        icon     : _icon,       // Sprite de l'icône affichée à gauche du texte
        lifespan : _duration    // Durée de vie en frames avant disparition
    };

    ds_list_add(global.popup_list, popup);
}