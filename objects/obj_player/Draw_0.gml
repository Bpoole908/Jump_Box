/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 03E8BC99
/// @DnDArgument : "code" "if(room == rm_level_one){$(13_10)	shader_set(shd_l1Player);$(13_10)	draw_self();$(13_10)	shader_reset();$(13_10)}else if(room == rm_level_two){$(13_10)	shader_set(shd_l2Player);$(13_10)	draw_self();$(13_10)	shader_reset();$(13_10)}else if(room == rm_level_three){$(13_10)	shader_set(shd_l3Player);$(13_10)	draw_self();$(13_10)	shader_reset();$(13_10)}else if(room == rm_start){$(13_10)	shader_set(shd_start);$(13_10)	draw_self();$(13_10)	shader_reset();$(13_10)}else if(room == rm_end){$(13_10)	shader_set(shd_end);$(13_10)	draw_self();$(13_10)	shader_reset();$(13_10)}"
if(room == rm_level_one){
	shader_set(shd_l1Player);
	draw_self();
	shader_reset();
}else if(room == rm_level_two){
	shader_set(shd_l2Player);
	draw_self();
	shader_reset();
}else if(room == rm_level_three){
	shader_set(shd_l3Player);
	draw_self();
	shader_reset();
}else if(room == rm_start){
	shader_set(shd_start);
	draw_self();
	shader_reset();
}else if(room == rm_end){
	shader_set(shd_end);
	draw_self();
	shader_reset();
}