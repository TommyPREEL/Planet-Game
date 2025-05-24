planet_id = instance_find(oPlanet, 0); // à ad
var dx = x - planet_id.x;
var dy = y - planet_id.y;

// "Dérotation" pour obtenir des coordonnées locales fixes
var c = dcos(-planet_id.image_angle);
var s = dsin(-planet_id.image_angle);

x0 = dx * c - dy * s;
y0 = dx * s + dy * c;

if (global.is_paused) {
    image_speed = 0;
} else {
    image_speed = 1; // ou la valeur normale de vitesse d’animation
}

planet_id = instance_find(oPlanet, 0); // à adapter si plusieurs planètes