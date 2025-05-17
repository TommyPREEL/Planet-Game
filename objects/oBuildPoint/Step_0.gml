var c = dcos(planet_id.image_angle);
var s = dsin(planet_id.image_angle);

x = planet_id.x + x0 * c - y0 * s;
y = planet_id.y + x0 * s + y0 * c;