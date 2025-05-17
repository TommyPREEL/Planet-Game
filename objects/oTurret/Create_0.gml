// Variable de tir
hasShooted = false

// Trouver la planète
planet_id = instance_find(oPlanet, 0); // Supposons qu’il n’y a qu’une seule planète

// Calculer l'offset relatif par rapport à la planète SANS rotation
x0 = x - planet_id.x;
y0 = y - planet_id.y;