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

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 014FFAA3
/// @DnDArgument : "key" "ord("C")"
var l014FFAA3_0;
l014FFAA3_0 = keyboard_check_pressed(ord("C"));
if (l014FFAA3_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 31AA57F5
	/// @DnDApplyTo : ad4c7c20-9340-4701-b7de-049b7a748cee
	/// @DnDParent : 014FFAA3
	with(obj_enemy) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 74E8E1EA
	/// @DnDApplyTo : da88c4e1-99d6-4cd1-b456-4de2488f092f
	/// @DnDParent : 014FFAA3
	with(obj_saw) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2B1902BD
	/// @DnDApplyTo : f7bfe9d0-39c8-403a-aac8-a27ed4d36230
	/// @DnDParent : 014FFAA3
	with(obj_tl_saw) instance_destroy();
}