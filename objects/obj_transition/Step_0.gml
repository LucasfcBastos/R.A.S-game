if (place_meeting(x, y, obj_player))
{
    var pode_entrar = true;

    if (require_key)
    {
        pode_entrar = keyboard_check_pressed(vk_enter);
    }

    if (pode_entrar)
    {
        global.spawn_x = target_x;
        global.spawn_y = target_y;
        global.spawn_facing = target_facing;

        room_goto(target_room);
    }
}