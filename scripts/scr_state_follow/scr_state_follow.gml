//Follow Player
dis = point_distance(x, y, obj_player.x, obj_player.y);
dir = sign(obj_player.x - x)

if(dis <= agrroRange){
	show_debug_message("In aggro range")
	move_towards_point(obj_player.x, y, enemySpeed);

	
} else {
	//mp_potential_step(prev_path_x , prev_path_y, 3, obj_);
	show_debug_message("Moving back to path")
	move_towards_point(prev_path_x , prev_path_y, 3)
	if(abs(prev_path_x - x) <= 1){
		path_speed = 5;
		path_position = prev_path_position;
		state = scr_state_move;
	}
}

/*
if (place_meeting(x, y+1, obj_wall))
{
	vsp = 0;
} else {
	if (vsp < 15) {
		vsp += grav;
	}
}
y += vsp;
*/