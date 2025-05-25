// objGameOver → Draw Event
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

var cx = room_width  / 2;
var cy = room_height / 3;
draw_text(cx, cy, "You Died!\n\n Score: " + string(global.game_score));