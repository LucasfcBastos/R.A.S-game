timer++;

if (timer >= room_speed)
{
    timer = 0;

    global.game_minute++;

    if (global.game_minute >= 60)
    {
        global.game_minute = 0;
        global.game_hour++;
    }

    if (global.game_hour >= 24)
    {
        global.game_hour = 0;
    }
}