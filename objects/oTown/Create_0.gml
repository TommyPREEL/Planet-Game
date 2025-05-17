town_id = "town1";
// Assume the planet is at (planet_x, planet_y)
	
var planet = instance_find(oPlanet, 0);

// Only continue if planet exists
if (planet != noone) {
    planet_x = planet.x;
    planet_y = planet.y;
}

planet_x = oPlanet.x;
planet_y = obj_planet.y;

// Position relative to planet center
var dx = x - planet_x;
var dy = y - planet_y;

// Store polar data
radius = point_distance(planet_x, planet_y, x, y);
angle = point_direction(planet_x, planet_y, x, y); // In degrees