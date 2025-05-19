var dir = point_direction(x, y, target_x, target_y);
x += lengthdir_x(speed, dir);
y += lengthdir_y(speed, dir);

image_angle = dir;

lifetime -= 1;

if (lifetime <= 0) {
    show_debug_message("Meteor faded away.");
    instance_destroy();
}

if (lifetime <= fade_duration) {
    fade_active = true;
}

if (fade_active) {
    fade_timer += 1;
    image_alpha = max(0, 1 - fade_timer / fade_duration);
}