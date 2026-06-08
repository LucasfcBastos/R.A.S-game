draw_set_alpha(1);

// Mostra a parcela atual do jogador
if (instance_exists(obj_player))
{
    var parcela_x = floor(obj_player.x / parcel_size);
    var parcela_y = floor(obj_player.y / parcel_size);

    draw_text(
        camera_get_view_x(view_camera[0]) + 10,
        camera_get_view_y(view_camera[0]) + 10,
        "Parcela: " + string(parcela_x) + "," + string(parcela_y)
    );
	
    draw_text(
        camera_get_view_x(view_camera[0]) + 10,
        camera_get_view_y(view_camera[0]) + 22,
        "Status: " + string(obj_player.facing)
    );
	
	    draw_text(
        camera_get_view_x(view_camera[0]) + 10,
        camera_get_view_y(view_camera[0]) + 34,
        "Status: " + string(obj_player.y)
    );
}