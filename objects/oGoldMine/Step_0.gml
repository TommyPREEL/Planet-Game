if (instance_exists(planet_id)) {
    // Recalcule la position par rotation des coordonnées locales
    var c = dcos(planet_id.image_angle);
    var s = dsin(planet_id.image_angle);

    x = planet_id.x + x0 * c - y0 * s;
    y = planet_id.y + x0 * s + y0 * c;

    // Oriente le sprite pour que le bas soit vers le centre de la planète
    image_angle = point_direction(x, y, planet_id.x, planet_id.y) + 90;
}
