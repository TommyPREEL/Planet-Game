// Valeurs par défaut
global.key_left = vk_left;
global.key_right = vk_right;
global.key_add_structure = vk_space;
global.key_select_turret = ord("1");
global.key_select_house = ord("2");
global.key_select_nuke = ord("3");
global.key_select_gold_mine = ord("4");
global.key_select_sawmill = ord("5");
global.key_destroy_building = vk_delete;

// Valeurs par défaut
global.default_key_left = vk_left;
global.default_key_right = vk_right;
global.default_key_add_structure = vk_space;
global.default_key_select_turret = ord("1");
global.default_key_select_house = ord("2");
global.default_key_select_nuke = ord("3");
global.default_key_select_gold_mine = ord("4");
global.default_key_select_sawmill = ord("5");
global.default_key_destroy_building = vk_delete;

// Valeurs modifiables actuelles (si non déjà définies ailleurs)
global.key_left = global.default_key_left;
global.key_right = global.default_key_right;
global.key_add_structure = global.default_key_add_structure;
global.key_select_turret = global.default_key_select_turret;
global.key_select_house = global.default_key_select_house;
global.key_select_nuke = global.default_key_select_nuke;
global.key_select_gold_mine = global.default_key_select_gold_mine;
global.key_select_sawmill = global.default_key_select_sawmill;
global.key_destroy_building = global.default_key_destroy_building;

// Initialise le volume global si nécessaire
if (!variable_global_exists("master_volume")) {
    global.master_volume = 0.5; // Volume à 50% par défaut
    audio_master_gain(global.master_volume); // Version compatible
}

global.volume = 0;

global.is_paused = false;

global.selected_item = "";

window_set_fullscreen(false);
var w = display_get_width();
var h = display_get_height();

window_set_size(w, h);
window_set_position(0, 0);

display_set_gui_size(w, h);