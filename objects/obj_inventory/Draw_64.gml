var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var xx = (gui_w / 3)-7;
var yy = gui_h - 80;

draw_sprite(
    spr_hotbar,
    global.inv_selected,
    xx,
    yy
);