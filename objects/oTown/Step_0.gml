if (instance_exists(planet_id)) {
    /*var planet = planet_id;

    // Calcul de la position en fonction de la rotation de la planète
    var current_angle = relative_angle + planet.image_angle;

    x = planet.x + lengthdir_x(relative_dist, current_angle);
    y = planet.y + lengthdir_y(relative_dist, current_angle);

    // (Optionnel) Ajuste l’orientation de la maison pour qu’elle "tienne droit" sur la planète
    image_angle = current_angle;*/
	
	//// Calcul pour coller à la planète
	var planet = planet_id;

	// Calcul des cosinus et sinus de l’angle de la planète
	var c = dcos(planet.image_angle);
	var s = dsin(planet.image_angle);

	// Appliquer la transformation pour calculer la nouvelle position de la tourelle
	x = planet.x + x0 * c + y0 * s;
	y = planet.y - x0 * s + y0 * c;

}