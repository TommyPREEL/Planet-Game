collision_count -= 1;
image_alpha = 0.5;
instance_destroy(other);

if (collision_count <= 0) {
    instance_destroy();
}