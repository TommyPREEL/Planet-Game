if (image_alpha < 1) {
    image_alpha += 0.05;
    if (image_alpha > 1) image_alpha = 1;
}
if (global.shield_active = true) {
    visible = true;
} else {
    visible = false;
}