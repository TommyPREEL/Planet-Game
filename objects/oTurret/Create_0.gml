hasShooted = false;
planet_id = instance_find(oPlanet, 0);

var dx = x - planet_id.x;
var dy = y - planet_id.y;

var c = dcos(-planet_id.image_angle);
var s = dsin(-planet_id.image_angle);

x0 = dx * c - dy * s;
y0 = dx * s + dy * c;
