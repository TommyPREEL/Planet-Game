// Crée la liste des stats
global.stat_list = ds_list_create();

// Map des différents types de bar
type_list = ds_map_create();
ds_map_add(type_list, "bar", "bar")
ds_map_add(type_list, "number", "number")

// Création des barres
AddStat("HP",    100, 100, "death", "bar", 470, 30, sLifeBar);
AddStat("Mana",     100, 100, "none", "bar", 470, 60, sLifeBar);




//Stat definition
function AddStat(_name,_value, _max_value, _effect, _type, _position_x, _position_y, _sprite) {
    var stat = {
        name        : _name, //name
		value       : _value, //stat 
		max_value   : _max_value, //max value
		effect      : _effect, //stat effect
	//	unlock_level: _unlock_level, //level to unlock feature
		type        : _type, //stat type (ex: bar, number)
		position_x  : _position_x, //stat position_x
		position_y  : _position_y, //stat position_x
		sprite		: _sprite//sprite bar to display
    };
    ds_list_add(global.stat_list, stat);
}

scrCreateBars()
//function createBars() {
//    for (var i = 0; i < ds_list_size(stat_list); ++i) {
//        var stat = stat_list[| i];

//        if (stat.type == ds_map_find_value(type_list, "bar")) {
//            instance_create_layer(stat.position_x, stat.position_y, "Instances", stat.sprite_bar);
//        }
//    }
//}