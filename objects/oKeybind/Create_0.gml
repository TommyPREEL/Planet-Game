// Initialisation : aucune touche en cours d'édition
editing_key_index = -1;

// Positions des colonnes de boutons
var col_modify_x  = room_width * 0.65;
var col_reset_x   = room_width * 0.85;
var base_y = room_height * 0.23;
var line_height = 40; // Espacement vertical entre lignes

// Nombre d’actions configurables
var binds_count = 5;

// Création dynamique des boutons Modifier et Réinitialiser
for (var i = 0; i < binds_count; i++) {
    var y_pos = base_y + i * line_height;

    // Bouton "Modifier"
    var btn_modify = instance_create_layer(col_modify_x, y_pos, "UI", oButtonModify);
    btn_modify.button_index = i;
	btn_modify.image_xscale = 2.2;

    // Bouton "Réinitialiser"
    var btn_reset = instance_create_layer(col_reset_x, y_pos, "UI", oButtonReset);
    btn_reset.button_index = i;
	btn_reset.image_xscale = 3;
}
