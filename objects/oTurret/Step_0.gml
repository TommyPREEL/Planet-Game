if (image_index >= 7 && !hasShooted) { // Exemple : frame 7 du sprite
    instance_create_layer(x, y, "Instances", obj_bullet);
    hasShooted = true;
}

if (image_index == 0) { // Reset pour la prochaine animation
    hasShooted = false;
}