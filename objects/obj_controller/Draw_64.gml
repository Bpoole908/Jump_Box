/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1AFA000B
/// @DnDArgument : "font" "fnt_score"
/// @DnDSaveInfo : "font" "3fb48db4-a37c-43e6-8897-6185d86ac7b8"
draw_set_font(fnt_score);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0BAE8AB3
/// @DnDArgument : "color" "$FF0000ff"
draw_set_colour($FF0000ff & $ffffff);
draw_set_alpha(($FF0000ff >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 1A845773
/// @DnDArgument : "x" "64"
/// @DnDArgument : "y" "32"
/// @DnDArgument : "caption" ""Death Count: ""
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(64, 32, string("Death Count: ") + string(__dnd_score));