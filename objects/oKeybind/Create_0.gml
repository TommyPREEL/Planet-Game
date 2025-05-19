// Initialisation : aucune touche en cours d'édition
editing_key_index = -1;

// Valeurs par défaut
global.default_key_left = vk_left;
global.default_key_right = vk_right;
global.default_key_add_structure = ord("E");
global.default_key_select_turret = ord("1");
global.default_key_select_house = ord("2");

// Valeurs modifiables actuelles (si non déjà définies ailleurs)
global.key_left = global.default_key_left;
global.key_right = global.default_key_right;
global.key_add_structure = global.default_key_add_structure;
global.key_select_turret = global.default_key_select_turret;
global.key_select_house = global.default_key_select_house;

// Positions des colonnes de boutons
var col_modify_x = room_width * 0.65;
var col_reset_x = room_width * 0.80;
var base_y = room_height * 0.2;
var line_height = 50; // Espacement vertical entre lignes

// Nombre d’actions configurables
var binds_count = 5;

// Création dynamique des boutons Modifier et Réinitialiser
for (var i = 0; i < binds_count; i++) {
    var y_pos = base_y + i * line_height;

    // Bouton "Modifier"
    var btn_modify = instance_create_layer(col_modify_x, y_pos, "UI", oButtonModify);
    btn_modify.button_index = i;

    // Bouton "Réinitialiser"
    var btn_reset = instance_create_layer(col_reset_x, y_pos, "UI", oButtonReset);
    btn_reset.button_index = i;
}
