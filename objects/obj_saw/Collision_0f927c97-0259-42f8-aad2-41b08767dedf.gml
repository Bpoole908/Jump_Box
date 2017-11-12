/// @DnDAction : YoYo Games.Rooms.Restart_Room
/// @DnDVersion : 1
/// @DnDHash : 2194AC73
room_restart();

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 665EC689
/// @DnDApplyTo : e6ececff-a62e-4dab-b01c-865bb45cd75e
/// @DnDArgument : "lives" "-1"
/// @DnDArgument : "lives_relative" "1"
with(obj_life_score_controller) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(-1);
}