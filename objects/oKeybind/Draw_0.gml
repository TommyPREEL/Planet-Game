draw_sprite_stretched(sPauseBack, 0, 0, 0, room_width, room_height);

draw_set_font(pTexteMenu);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

var col_action_x  = room_width * 0.10;
var col_key_x     = room_width * 0.40;
var col_modify_x  = room_width * 0.60;
var col_reset_x   = room_width * 0.82;
var base_y        = room_height * 0.2;
var line_height   = 40;

var binds = [
    ["Gauche", global.key_left],
    ["Droite", global.key_right],
    ["Ajouter structure", global.key_add_structure],
    ["Sélection tourelle", global.key_select_turret],
    ["Sélection maison", global.key_select_house],
	["Sélection reacteur", global.key_select_nuke],
	["Sélection mine d'or", global.key_select_gold_mine],
	["Sélection scierie", global.key_select_sawmill],
	["Détruire bâtiment", global.key_destroy_building],
];

// En-têtes
draw_text(col_action_x, base_y - line_height, "Action");
draw_text(col_key_x, base_y - line_height, "Touche");
draw_text(col_modify_x, base_y - line_height, "Modification");
draw_text(col_reset_x, base_y - line_height, "Reset");

// Lignes
for (var i = 0; i < array_length(binds); i++) {
    var label = binds[i][0];
    var key = binds[i][1];
    var y_line = base_y + i * line_height;

    var key_str = (editing_key_index == i) ? "[...]" : string(keyname(key));
	
    draw_text(col_action_x, y_line, label);
    draw_text(col_key_x, y_line, key_str);
}
