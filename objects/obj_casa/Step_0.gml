if (obj_player.y < limite_troca) {
	depth = obj_player.depth - 5;
} else {
	depth = obj_player.depth + 5;
}

show_debug_message("PLAY: " + string(obj_player.y))
show_debug_message("BLOC: " + string(limite_troca))