// Inherit the parent event
event_inherited();

sprite_index = sInventoryClose;

slot_count = 6;
inventory = array_create(slot_count, noone);

slot_spacing = 10; // espacement horizontal entre les cases
slot_width = 54;
slot_height = 50;

// Ajouter un objet au premier emplacement
add_to_inventory(oWater);
//add_to_inventory(oWater);
add_to_inventory(oBoots);

// Obtenir dimensions du sprite d’inventaire
var sprite_h = sprite_get_height(sInventory);
var sprite_w = sprite_get_width(sInventory);

// Calcul du coin haut gauche du sprite (origine middle left)
var sprite_top_left_x = x;
var sprite_top_left_y = y;

// Position du coin haut gauche du premier slot
slot0_x = sprite_top_left_x + 100;  // coin haut gauche, axe horizontal
slot0_y = sprite_top_left_y + sprite_get_height(sInventory) / 2 + 6;  // coin haut gauche, axe vertical

// Générer les rectangles pour chaque slot
slot_rectangles = array_create(slot_count);

inventory_instances = array_create(slot_count, noone); // en plus de inventory[]

just_opened = false;

for (var i = 0; i < slot_count; i++) {
    var rx = slot0_x + i * (slot_width + slot_spacing);
    var ry = slot0_y;

    slot_rectangles[i] = [rx, ry, rx + slot_width, ry + slot_height];
}

// Fonction d’ajout d’objet dans l’inventaire
function add_to_inventory(item_obj) {
    for (var i = 0; i < slot_count; i++) {
        if (inventory[i] == noone) {
            inventory[i] = item_obj;
            show_debug_message("Ajouté : " + string(item_obj));
            return true;
        }
    }
    show_debug_message("Inventaire plein !");
    return false;
}