// Liste des statistiques
stat_list = ds_list_create();

// Map des différents types de bar
type_list = ds_map_create();
ds_map_add(type_list, "bar", "bar")
ds_map_add(type_list, "number", "number")

// Création des statistiques
AddStat("HP bar", "red", 100, "death", 0, "bar", 626, 16, noone);
AddStat("Event bar", "yellow", 100, "event", 0, "bar", 626, 116, noone);

// Création des barres
createBars()


//Stat definition
function AddStat(_name, _color, _value, _effect, _unlock_level, _type, _position_x, _position_y, _sprite_bar) {
    var stat = {
        name        : _name, //name
        color       : _color, //stat color
		value       : _value, //stat percentage
		effect      : _effect, //stat effect
		unlock_level: _unlock_level, //level to unlock feature
		type        : _type, //stat type (ex: bar, number)
		position_x  : _position_x, //stat position_x
		position_y  : _position_y, //stat position_x
		sprite_bar  : _sprite_bar //sprite bar to display
    };
    ds_list_add(stat_list, stat);
}

function createBars() {
    for (var i = 0; i < ds_list_size(stat_list); ++i) {
        var stat = stat_list[| i];

        if (stat.type == ds_map_find_value(type_list, "bar")) {
            instance_create_layer(stat.position_x, stat.position_y, "Instances", oBar);
        }
    }
}