//// Calcul pour coller à la planète
var planet = planet_id;

// Calcul des cosinus et sinus de l’angle de la planète
var c = dcos(planet.image_angle);
var s = dsin(planet.image_angle);

// Appliquer la transformation pour calculer la nouvelle position de la tourelle
x = planet.x + x0 * c + y0 * s;
y = planet.y - x0 * s + y0 * c;

//// Interaction avec le joueur
