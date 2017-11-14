//Enemy Movement
var dis = point_distance(x, y, obj_player.x, obj_player.y);
show_debug_message("Moving on path")

if( dis <= agrroRange){
	show_debug_message("Chasing")
	prev_path_position = path_position
	prev_path_x = x//path_get_x(path_index,path_position);
	prev_path_y = y//path_get_y(path_index,path_position);
	path_speed = 0;
	state = scr_state_follow
} else if(pathRunning == false) {
	path_start(path1, 5,path_action_reverse, false);
	pathRunning = true;
	
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

var move = 5;
if (!place_meeting(x-1, y+2, obj_wall) ){
	move = 5;
	show_debug_message("Moving Left")
} else if (!place_meeting(x+1, y+2, obj_wall)){
	move = -5;
	show_debug_message("Moving Right")
}

hspeed = move;
*/