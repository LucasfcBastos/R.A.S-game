if (mouse_wheel_up())
{
    global.inv_selected--;

    if (global.inv_selected < 0)
    {
        global.inv_selected = global.inv_size - 1;
    }
}

if (mouse_wheel_down())
{
    global.inv_selected++;

    if (global.inv_selected >= global.inv_size)
    {
        global.inv_selected = 0;
    }
}

if (keyboard_check_pressed(ord("1"))) global.inv_selected = 0;
if (keyboard_check_pressed(ord("2"))) global.inv_selected = 1;
if (keyboard_check_pressed(ord("3"))) global.inv_selected = 2;
if (keyboard_check_pressed(ord("4"))) global.inv_selected = 3;
if (keyboard_check_pressed(ord("5"))) global.inv_selected = 4;
if (keyboard_check_pressed(ord("6"))) global.inv_selected = 5;
if (keyboard_check_pressed(ord("7"))) global.inv_selected = 6;
if (keyboard_check_pressed(ord("8"))) global.inv_selected = 7;
if (keyboard_check_pressed(ord("9"))) global.inv_selected = 8;
if (keyboard_check_pressed(ord("0"))) global.inv_selected = 9;