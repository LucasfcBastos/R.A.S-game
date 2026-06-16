var m = global.game_hour * 60 + global.game_minute;

// Dia
if (m >= 420 && m < 1080)
{
    darkness = 0;
}

// Entardecer (18:00 -> 20:00)
else if (m >= 1080 && m < 1200)
{
    darkness = lerp(0, 0.6, (m - 1080) / 120);
}

// Noite
else if (m >= 1200 || m < 300)
{
    darkness = 0.6;
}

// Amanhecer (05:00 -> 07:00)
else if (m >= 300 && m < 420)
{
    darkness = lerp(0.6, 0, (m - 300) / 120);
}