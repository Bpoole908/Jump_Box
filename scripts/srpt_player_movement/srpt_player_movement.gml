//input
key_right = keyboard_check(ord("D"));
key_left =  keyboard_check(ord("A"));
key_jump =  keyboard_check(vk_space);

//Checks to apply gravity
// If wall is below you dont apply gravity otherwise apply gravity
if (place_meeting(x, y+1, obj_wall))
{
	vsp = 0;
	// Jumping
	if(key_jump){
		vsp = -jumpspeed;
	}
} else {
	if (vsp < 10) {
		if((place_meeting(x-1, y, obj_wall) || place_meeting(x+1, y, obj_wall)) && !place_meeting(x, y+1, obj_wall))
		{
			grav = .5
			show_debug_message("wall hanging "+ string(grav));
		
		} else {
			show_debug_message("falling" + string(grav));
			grav = .7;
		}
		vsp += grav;
	}
}

//Movement, Wall Jumping and Wall Hanging
if(key_right)
{
	hsp = movespeed;
	image_index = 3;
	if(place_meeting(x-1, y, obj_wall) && !place_meeting(x, y+1, obj_wall) && !key_left)
	{
		image_index = 4;
		vsp = key_jump * -jumpspeed
	}
}
if(key_left)
{
	hsp = -movespeed;
	image_index = 1;
	if(place_meeting(x+1, y, obj_wall) && !place_meeting(x, y+1, obj_wall)&& !key_right)
	{
		image_index = 2;
		vsp = key_jump * -jumpspeed
	}
}

if((!key_left && !key_right) || (key_left && key_right)){
	image_index = 0;
	hsp = 0;
}

var mov_direction = sign(hsp); // for wall hanging

// Horizontal Collision
if(place_meeting(x+hsp, y, obj_wall))
{
	while(!place_meeting(x+sign(hsp), y, obj_wall))
	{
		x += sign(hsp)
	}
	hsp = 0;
}

//Vertical Collision
if(place_meeting(x, y+vsp, obj_wall))
{
	while(!place_meeting(x, y+sign(vsp), obj_wall))
	{
		y += sign(vsp)
	}
	vsp = 0;
}

//Move
x += hsp;
y += vsp;


