planet_id = instance_find(oPlanet, 0); // à adapter si plusieurs planètes

// Position relative à la planète
var dx = x - planet_id.x;
var dy = y - planet_id.y;

// "Dérotation" pour obtenir des coordonnées locales fixes
var c = dcos(-planet_id.image_angle);
var s = dsin(-planet_id.image_angle);

x0 = dx * c - dy * s;
y0 = dx * s + dy * c;

AddToResource("Town", 1);