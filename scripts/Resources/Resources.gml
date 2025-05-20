function AddResource(_name, _amount, _max, _regen, _regen_rate) {
    var res = {
        name       : _name,         // Nom de la ressource
        amount     : _amount,       // Quantité actuelle
        max_value  : _max,          // Valeur maximale
        regen      : _regen,        // bool: régénère ou non
        regen_rate : _regen_rate    // taux de régénération par tick (ou frame)
    };
    ds_list_add(resource_list, res);
}

function GetResource(_name) {
    for (var i = 0; i < ds_list_size(resource_list); ++i) {
        var r = resource_list[| i];
        if (r.name == _name) return r;
    }
    return noone;
}

function AddToResource(_name, _amount) {
    var r = GetResource(_name);
    if (r != noone) {
        var new_value = r.amount + _amount;
        r.amount = clamp(new_value, 0, r.max_value); // Empêche d'aller sous 0 ou au-dessus du max
    }
}

function SubtractFromResource(_name, _amount) {
    var r = GetResource(_name);
    if (r != noone) {
        var new_value = r.amount - _amount;
        r.amount = clamp(new_value, 0, r.max_value); // Même logique ici
    }
}