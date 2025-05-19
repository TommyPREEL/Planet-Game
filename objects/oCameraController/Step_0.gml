if (shake_timer > 0) {
    shake_timer -= 1;

    var shake_x = random_range(-shake_magnitude, shake_magnitude);
    var shake_y = random_range(-shake_magnitude, shake_magnitude);

    camera_set_view_pos(view_camera[0], shake_origin_x + shake_x, shake_origin_y + shake_y);
} else {
    // Reset to original camera position
    camera_set_view_pos(view_camera[0], shake_origin_x, shake_origin_y);
}