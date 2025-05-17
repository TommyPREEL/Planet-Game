if (keyboard_check(vk_left)) {
    rotation_angle -= rotation_speed;
}
if (keyboard_check(vk_right)) {
    rotation_angle += rotation_speed;
}

/*

// Mettre à jour les objets attachés à la planète
for (var i = 0; i < ds_list_size(attached_objects); i++) {
    var obj = attached_objects[| i];

    // Calcul de la position de la tourelle autour de la planète
    var current_angle = obj.relative_angle + rotation_angle;

    obj.x = x + lengthdir_x(obj.relative_dist, current_angle);
    obj.y = y + lengthdir_y(obj.relative_dist, current_angle);

    // Si tu veux qu’elle soit "droite" par rapport à la planète, oriente-la vers l’extérieur :
    obj.image_angle = current_angle; // Ça garde la tourelle orientée "normalement"
}

*/