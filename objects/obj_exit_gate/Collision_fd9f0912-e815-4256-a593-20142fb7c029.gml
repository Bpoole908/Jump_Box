/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 0E73E3D1
/// @DnDArgument : "key" "ord("W")"
var l0E73E3D1_0;
l0E73E3D1_0 = keyboard_check_pressed(ord("W"));
if (l0E73E3D1_0)
{
	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 40BD6E60
	/// @DnDParent : 0E73E3D1
	room_goto_next();
}