// Check if this build point is already occupied
if (!instance_exists(oTown) || point_distance(x, y, oTown.x, oTown.y) > 5) {
    // Store a reference to this point in a global variable
    global.selected_build_point = id;
}