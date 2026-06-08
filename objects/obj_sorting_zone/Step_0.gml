// Inherit the parent event
event_inherited();

var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_w = camera_get_view_width(view_camera[0]);
var cam_h = camera_get_view_height(view_camera[0]);

if ( bbox_right >= cam_x && bbox_left <= cam_x + cam_w && bbox_bottom >= cam_y && bbox_top <= cam_y + cam_h )
{
	
    if (group == 0)
    {
        if (type == 0)
        {
            active_collision = (obj_player.y >= y);
        }

        if (type == 1)
        {
            active_collision = (obj_player.y <= y);
        }
    }
    else if (group == 1 && type == 0)
    {

        if (pair_ref == noone)
        {
            with (obj_sorting_zone)
            {
                if (
                    id != other.id &&
                    group == 1 &&
                    fence_id == other.fence_id
                )
                {
                    other.pair_ref = id;
                    break;
                }
            }
        }
		
	    if (pair_ref != noone)
	    {
	        if (status == -1)
	        {
	            if (obj_player.bbox_top > bbox_bottom)
	            {
	                status = 0;
	            }
	            else if (obj_player.bbox_bottom < pair_ref.bbox_top)
	            {
	                status = 1;
	            }
	        }

	        //--------------------------------------------------
	        // STATUS 0
	        // TYPE 1 ativo
	        // TYPE 0 inativo
	        //--------------------------------------------------
	        if (status == 1)
	        {
	            active_collision = false;
	            visible = false;

	            pair_ref.active_collision = true;
	            pair_ref.visible = true;

	            // jogador passou da linha superior
	            if (obj_player.bbox_top > bbox_bottom)
	            {
	                status = 0;
	            }
	        }

	        //--------------------------------------------------
	        // STATUS 1
	        // TYPE 0 ativo
	        // TYPE 1 inativo
	        //--------------------------------------------------
	        if (status == 0)
	        {
	            active_collision = true;
	            visible = true;
				
	            pair_ref.active_collision = false;
	            pair_ref.visible = false;

	            // jogador voltou para cima
	            if (obj_player.bbox_bottom < pair_ref.bbox_top)
	            {
	                status = 1;
	            }
	        }

	        pair_ref.status = status;
	    }

    }
}