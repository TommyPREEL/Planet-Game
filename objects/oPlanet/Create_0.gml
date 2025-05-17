image_angle = 0
image_speed = 0.005
rotation_angle = 0; // L’angle actuel de la planète (en degrés)
rotation_speed = 0.005; // Vitesse de rotation par input
attached_objects = ds_list_create();

/*
var turret = instance_create_layer(x, y, "Instances", oTurret);

// Calcul de la position relative
var angle = point_direction(oPlanet.x, oPlanet.y, turret.x, turret.y);
var dist = point_distance(oPlanet.x, oPlanet.y, turret.x, turret.y);

turret.relative_angle = angle;
turret.relative_dist = dist;

ds_list_add(oPlanet.attached_objects, turret);
*/