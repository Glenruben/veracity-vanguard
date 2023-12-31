/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 56971A96
/// @DnDArgument : "key" "ord("W")"
var l56971A96_0;
l56971A96_0 = keyboard_check(ord("W"));
if (l56971A96_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Friction
	/// @DnDVersion : 1
	/// @DnDHash : 0B7E916C
	/// @DnDParent : 56971A96
	/// @DnDArgument : "friction" "1"
	friction = 1;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 06188AFB
	/// @DnDParent : 56971A96
	/// @DnDArgument : "speed" "5"
	speed = 5;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 14B261D1
/// @DnDArgument : "key" "ord("A")"
var l14B261D1_0;
l14B261D1_0 = keyboard_check(ord("A"));
if (l14B261D1_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AEEA26C
	/// @DnDParent : 14B261D1
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += 4;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 6839997E
	/// @DnDParent : 14B261D1
	/// @DnDArgument : "direction" "image_angle"
	direction = image_angle;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 1FF2392E
/// @DnDArgument : "key" "ord("D")"
var l1FF2392E_0;
l1FF2392E_0 = keyboard_check(ord("D"));
if (l1FF2392E_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1AC598C9
	/// @DnDParent : 1FF2392E
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += -4;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 4E719D27
	/// @DnDParent : 1FF2392E
	/// @DnDArgument : "direction" "image_angle"
	direction = image_angle;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4ADDF3F4
/// @DnDArgument : "key" "ord("S")"
var l4ADDF3F4_0;
l4ADDF3F4_0 = keyboard_check(ord("S"));
if (l4ADDF3F4_0)
{
	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 494D67D5
	/// @DnDParent : 4ADDF3F4
	/// @DnDArgument : "dir" "image_angle"
	/// @DnDArgument : "speed" "-0.4"
	motion_add(image_angle, -0.4);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 4DFE8BCD
/// @DnDBreak : 1

var l4DFE8BCD_0;
l4DFE8BCD_0 = mouse_check_button_pressed(mb_left);
if (l4DFE8BCD_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 11E729CE
	/// @DnDParent : 4DFE8BCD
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDSaveInfo : "objectid" "obj_bullet"
	instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7D8C8BB7
	/// @DnDParent : 4DFE8BCD
	/// @DnDArgument : "expr" "powerup[0] == 1"
	if(powerup[0] == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1C956785
		/// @DnDParent : 7D8C8BB7
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "bullet"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDSaveInfo : "objectid" "obj_bullet"
		var bullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 167E4554
		/// @DnDParent : 7D8C8BB7
		/// @DnDArgument : "expr" "10"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "bullet.direction"
		bullet.direction += 10;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 15AF5DF8
		/// @DnDParent : 7D8C8BB7
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "bullet2"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDSaveInfo : "objectid" "obj_bullet"
		var bullet2 = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2BED8A40
		/// @DnDParent : 7D8C8BB7
		/// @DnDArgument : "expr" "-10"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "bullet2.direction"
		bullet2.direction += -10;
	}
}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 5FA957BC
move_wrap(1, 1, 0);