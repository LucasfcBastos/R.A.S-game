var hora = string(global.game_hour);
var minuto = string(global.game_minute);

if (global.game_hour < 10)
{
    hora = "0" + hora;
}

if (global.game_minute < 10)
{
    minuto = "0" + minuto;
}

draw_set_color(c_white);
draw_text(20, 20, hora + ":" + minuto);