function keyname(key) {
    switch (key) {
        case vk_left: return "← Gauche";
        case vk_right: return "→ Droite";
        case vk_up: return "↑ Haut";
        case vk_down: return "↓ Bas";
        case vk_space: return "Espace";
        case vk_enter: return "Entrée";
        case vk_escape: return "Échap";
        case vk_shift: return "Shift";
        case vk_control: return "Ctrl";
        case vk_alt: return "Alt";
    }

    // Pour les lettres et chiffres (A-Z, 0-9)
    if (key >= ord("A") && key <= ord("Z")) {
        return chr(key);
    }
    if (key >= ord("0") && key <= ord("9")) {
        return chr(key);
    }

    return "Touche " + string(key);
}
