if (!volcano_extinguished) {
    volcano_extinguished = true;
    eruption_started = false;
    image_index = 5;  // Frame 6 (index 0-based)
    image_speed = 0;
    show_debug_message("Volcan éteint par l'eau !");
}
