/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 12B62677
/// @DnDArgument : "x" "64"
/// @DnDArgument : "sprite" "spr_life"
/// @DnDSaveInfo : "sprite" "2f281a95-40bd-4f1a-80cd-d9b7900d5726"
var l12B62677_0 = sprite_get_width(spr_life);
var l12B62677_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l12B62677_2 = __dnd_lives; l12B62677_2 > 0; --l12B62677_2) {
	draw_sprite(spr_life, 0, 64 + l12B62677_1, 0);
	l12B62677_1 += l12B62677_0;
}

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1AFA000B
/// @DnDArgument : "font" "fnt_Score"
draw_set_font(fnt_Score);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0BAE8AB3
/// @DnDArgument : "color" "$FF0000ff"
draw_set_colour($FF0000ff & $ffffff);
draw_set_alpha(($FF0000ff >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 7D6FBFCC
/// @DnDArgument : "x" "64"
/// @DnDArgument : "y" "64"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(64, 64, string("Score: ") + string(__dnd_score));