function AddResource(_name, _amount, _max, _regen, _regen_rate, _icon) {
    var res = {
        name               : _name,
        amount             : _amount,
        max_value          : _max,
        regen              : _regen,
        regen_rate         : _regen_rate,
        icon               : _icon,
    };
    ds_list_add(global.resource_list, res);
}

function GetResource(_name) {
    for (var i = 0; i < ds_list_size(global.resource_list); ++i) {
        var r = global.resource_list[| i];
        if (r.name == _name) return r;
    }
    return noone;
}

function AddToResource(_name, _amount, isPopupDisplay) {
	isPopupDisplay = (isPopupDisplay == undefined) ? true : isPopupDisplay;
    var r = GetResource(_name);
    if (r != noone) {
        var old = r.amount;
        var new_value = clamp(r.amount + _amount, 0, r.max_value);
        var delta = new_value - old;

        if (delta != 0) {
            r.amount = new_value;
			
			if(isPopupDisplay) {

	            // Afficher popup visuel (si delta > 0 uniquement)
	            AddResourcePopup(
	                "+" + string(abs(delta)),
	                350, 20,                            // Coordonnées à adapter à ton HUD
	                c_lime,                             // Vert pour gain
	                r.icon,
	                60
	            );
			}
        }
    }
}

function SubtractFromResource(_name, _amount, isPopupDisplay) {
	isPopupDisplay = (isPopupDisplay == undefined) ? true : isPopupDisplay;
    var r = GetResource(_name);
    if (r != noone) {
        // Vérifie qu'on a assez pour soustraire
        if (r.amount - _amount < 0) {
            return;
        }

        var old = r.amount;
        var new_value = clamp(r.amount - _amount, 0, r.max_value);
        var delta = old - new_value;

        if (delta >= 0) {
            r.amount = new_value;
			
			if(isPopupDisplay) {

	            AddResourcePopup(
	                "-" + string(abs(delta)),
	                350, 20,
	                c_red,
	                r.icon,
	                60
	            );
			}
        }
    }
}