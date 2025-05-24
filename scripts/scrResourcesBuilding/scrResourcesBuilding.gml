/// 1) Création d’un type de bâtiment de ressource
function createResourceBuilding(_name, _linked_resource, _max_level, _max_count, _base_rate) {
    var resource_building = {
        name               : _name,
        linked_resource    : _linked_resource,
        level              : 1,
        max_level          : _max_level,
        max_count          : _max_count,
        current_count      : 0,
        base_rate          : _base_rate,
        upgrade_multiplier : 1.0,
		enabled_count      : 0,
    };
    ds_map_add(global.resource_buildings, _name, resource_building);
}

/// 2) Construire un bâtiment
function buildResourceBuilding(_name) {
    if (!ds_map_exists(global.resource_buildings, _name)) {
        show_message("Bâtiment " + _name + " introuvable !");
        return;
    }
    var rb = ds_map_find_value(global.resource_buildings, _name);
    if (rb.current_count < rb.max_count) {
        rb.current_count++;
        rb.enabled_count++;
        updateResource();
    } else {
        show_message("Impossible de construire plus de " + rb.max_count + " " + _name);
    }
}

/// 3) Améliorer un bâtiment
function upgradeResourceBuilding(_name) {
    if (!ds_map_exists(global.resource_buildings, _name)) {
        show_message("Erreur : '" + _name + "' introuvable !");
        return;
    }
    var rb = ds_map_find_value(global.resource_buildings, _name);
    if (rb.level < rb.max_level) {
        rb.level++;
        rb.upgrade_multiplier += 0.2;
        updateResource();
        show_message("Upgrade de " + _name + " niveau " + string(rb.level));
    } else {
        show_message(_name + " déjà au niveau max");
    }
}

/// 4) Détruire un bâtiment
function destroyResourceBuilding(_name) {
    if (!ds_map_exists(global.resource_buildings, _name)) {
        show_message("Erreur : '" + _name + "' introuvable pour la destruction !");
        return;
    }
    var rb = ds_map_find_value(global.resource_buildings, _name);
    if (rb.current_count > 0) {
        rb.current_count--;
        rb.enabled_count = max(rb.enabled_count - 1, 0);
        updateResource();
    } else {
        show_message("Aucun '" + _name + "' à détruire.");
    }
}

/// 7) Recalcul des régénérations pour chaque ressource
function updateResource() {
    for (var i = 0; i < ds_list_size(global.resource_list); i++) {
        var r = global.resource_list[| i];
        if (!r.regen) continue;

        var regen_rate = 0;
        var key = ds_map_find_first(global.resource_buildings);
        while (key != undefined) {
            var rb = ds_map_find_value(global.resource_buildings, key);
            if (rb.linked_resource == r.name && rb.enabled_count > 0) {
                regen_rate += rb.base_rate * rb.enabled_count * rb.upgrade_multiplier;
            }
            key = ds_map_find_next(global.resource_buildings, key);
        }
        r.regen_rate = regen_rate;
    }
}

/// Active un exemplaire du bâtiment (si possible)
function activateResourceBuilding(_name) {
    // 1) Vérifie que le building existe
    if (!ds_map_exists(global.resource_buildings, _name)) return;
    var rb = ds_map_find_value(global.resource_buildings, _name);
    // 2) Si on a des bâtiments construits non-activés
    if (rb.current_count > rb.enabled_count) {
        rb.enabled_count += 1;
        updateResource();
    }
}

/// Désactive un exemplaire du bâtiment (si possible)
function deactivateResourceBuilding(_name) {
    if (!ds_map_exists(global.resource_buildings, _name)) return;
    var rb = ds_map_find_value(global.resource_buildings, _name);
    if (rb.enabled_count > 0) {
        rb.enabled_count -= 1;
        updateResource();
    }
}