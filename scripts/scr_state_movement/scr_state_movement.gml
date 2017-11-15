//Player Distance
dis = point_distance(x, y, obj_player.x, obj_player.y);


//Chase Player
if(dis <= agrroRange && !place_meeting(x ,y, obj_enemy_bounds)){
	path_end();
	show_debug_message("In aggro range "+ string(dis));
	move_towards_point(obj_player.x, y, enemySpeed);
	//mp_potential_step(obj_player.x, obj_player.y, 3.5, obj_wall);
	show_debug_message("speed"+ string(speed))
//Return to path
} else if(path_index != path1){
	show_debug_message("Moving back to path "+ string(abs(start_x - x)))
	move_towards_point(start_x, start_y, 4);
//At original path location, start path again
	if(abs(start_x - x) <= 2){
		show_debug_message("At prev path location " + string(start_x))
		path_start(path1, 5,path_action_reverse, false);
	}
}

// start initial path
if(pathRunning == false) {
	path_start(path1, 5,path_action_reverse, false);
	pathRunning = true;
	
}







/*else {
	//mp_potential_step(prev_path_x , prev_path_y, 3, obj_);
	show_debug_message("Moving back to path "+ string(abs(prev_path_x - x)))
	move_towards_point(prev_path_x , prev_path_y, 3)
	if(abs(prev_path_x - x) <= 1){
		show_debug_message("At prev path location" + string(prev_path_x))
		path_speed = 5;
		path_position = prev_path_position;
		back_to_path_pos = true;
		state = scr_state_move;
	}
}
*/
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