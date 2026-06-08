if (obj_player.x > x and obj_player.x < x + 96) or (obj_player.x > x + 256 and obj_player.x < x + 374) {
	depth = -(y + sprite_height) + 50;
} else {
	depth = -(y + sprite_height);
}