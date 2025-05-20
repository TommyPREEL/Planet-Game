planet_id = instance_find(oPlanet, 0);

// -- Génère un angle aléatoire autour de la planète
var angle = irandom_range(0, 359);
var distance = 120; // Distance depuis le centre de la planète
var final_x = planet_id.x + lengthdir_x(distance, angle);
var final_y = planet_id.y + lengthdir_y(distance, angle);

// Position temporaire à final_x/y (pour éviter bug d'affichage)
x = final_x;
y = final_y;

// Calcul des coordonnées relatives
var dx = final_x - planet_id.x;
var dy = final_y - planet_id.y;

var c = dcos(-planet_id.image_angle);
var s = dsin(-planet_id.image_angle);

x0 = dx * c - dy * s;
y0 = dx * s + dy * c;

// Distance d’apparition en profondeur
current_distance = distance - 20; // 20 px plus proche
target_distance = distance;

// Apparition progressive
appear_progress = 0;
appear_speed = 0.01;

// Animation lente
image_index = 0;
image_speed = 0.05;

// Contrôle
eruption_started = false;
eruption_timer = 0;
eruption_duration = room_speed * 30; // 30 secondes en fonction du room speed
volcano_extinguished = false;
animation_ready = false;