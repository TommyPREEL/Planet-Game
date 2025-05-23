if (!volcano_extinguished && global.selected_item = oWater) {
    volcano_extinguished = true;
    eruption_started = false;
    image_index = 5;  // Frame 6 (index 0-based)
    image_speed = 0.1;
    show_debug_message("Volcan éteint par l'eau !");
}