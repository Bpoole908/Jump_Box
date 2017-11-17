/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 6A9D64FA
/// @DnDArgument : "key" "ord("N")"
var l6A9D64FA_0;
l6A9D64FA_0 = keyboard_check_pressed(ord("N"));
if (l6A9D64FA_0)
{
	/// @DnDAction : YoYo Games.Rooms.If_Last_Room
	/// @DnDVersion : 1
	/// @DnDHash : 42E8CBB9
	/// @DnDParent : 6A9D64FA
	/// @DnDArgument : "not" "1"
	if(room != room_last)
	{
		/// @DnDAction : YoYo Games.Rooms.Next_Room
		/// @DnDVersion : 1
		/// @DnDHash : 09B332FC
		/// @DnDParent : 42E8CBB9
		room_goto_next();
	}
}