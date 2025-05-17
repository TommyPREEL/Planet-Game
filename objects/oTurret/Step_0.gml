//// Tir & créer la balle
if (image_index >= 7 && !hasShooted) { 
    // Crée la balle
    var bullet = instance_create_layer(x, y, "Instances", oBullet);
    
    // Oriente la balle dans la bonne direction (optionnel)
    bullet.direction = image_angle; 
    bullet.speed = 8; // Ajuste la vitesse selon le gameplay

    // Marque que le tir est déjà fait pour cette animation
    hasShooted = true;
}

// Reset pour la prochaine animation
if (image_index == 0) {
    hasShooted = false;
}

//// Calcul pour coller à la planète
var planet = planet_id;

// Calcul des cosinus et sinus de l’angle de la planète
var c = dcos(planet.image_angle);
var s = dsin(planet.image_angle);

// Appliquer la transformation pour calculer la nouvelle position de la tourelle
x = planet.x + x0 * c + y0 * s;
y = planet.y - x0 * s + y0 * c;