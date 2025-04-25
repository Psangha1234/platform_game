/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 16BFCA43
/// @DnDInput : 2
/// @DnDArgument : "expr" "keyboard_check(vk_right)- keyboard_check(vk_left)"
/// @DnDArgument : "expr_1" "move_x* move_speed"
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "var_1" "move_x"
move_x = keyboard_check(vk_right)- keyboard_check(vk_left);
move_x = move_x* move_speed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6444F5DE
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_ground"
/// @DnDSaveInfo : "object" "obj_ground"
var l6444F5DE_0 = instance_place(x + 0, y + 2, obj_ground);
if ((l6444F5DE_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A1AF71A
	/// @DnDParent : 6444F5DE
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 0FC1D84C
	/// @DnDParent : 6444F5DE
	var l0FC1D84C_0;
	l0FC1D84C_0 = keyboard_check(vk_space);
	if (l0FC1D84C_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0CE0F828
		/// @DnDParent : 0FC1D84C
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4C092EA0
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 382F6F2F
	/// @DnDParent : 4C092EA0
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 453978E8
		/// @DnDParent : 382F6F2F
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 1EF586CF
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "0"
/// @DnDArgument : "maxymove" "0"
/// @DnDArgument : "object" "obj_ground"
/// @DnDSaveInfo : "object" "obj_ground"
move_and_collide(move_x, move_y, obj_ground,4,0,0,0,0);