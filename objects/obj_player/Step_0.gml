var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var next_x = x + h * move_speed;

var list = ds_list_create();

var qtd = collision_rectangle_list(
    bbox_left + h * move_speed,
    bbox_top,
    bbox_right + h * move_speed,
    bbox_bottom,
    obj_solid,
    false,
    true,
    list,
    false
);

var bloqueado = false;

for (var i = 0; i < qtd; i++)
{
    var inst = list[| i];

    if (inst.active_collision)
    {
        bloqueado = true;
        break;
    }
}

ds_list_destroy(list);

if (!bloqueado)
{
    x = next_x;
}

var next_y = y + v * move_speed;

var list = ds_list_create();

var qtd = collision_rectangle_list(
    bbox_left,
    bbox_top + v * move_speed,
    bbox_right,
    bbox_bottom + v * move_speed,
    obj_solid,
    false,
    true,
    list,
    false
);

var bloqueado = false;

for (var i = 0; i < qtd; i++)
{
    var inst = list[| i];

    if (inst.active_collision)
    {
        bloqueado = true;
        break;
    }
}

ds_list_destroy(list);

if (!bloqueado)
{
    y = next_y;
}

// Atualiza a direção
if (h > 0)
{
    facing = "right";
}
else if (h < 0)
{
    facing = "left";
}
else if (v > 0)
{
    facing = "down";
}
else if (v < 0)
{
    facing = "up";
}

// Escolhe o sprite
switch (facing)
{
    case "down":
        sprite_index = spr_player_down;
        break;

    case "up":
        sprite_index = spr_player_up;
        break;

    case "left":
        sprite_index = spr_player_left;
        break;

    case "right":
        sprite_index = spr_player_right;
        break;
}

if (h == 0 && v == 0)
{
    image_speed = 0;
    image_index = 0;
}
else
{
    image_speed = 1.2;
}