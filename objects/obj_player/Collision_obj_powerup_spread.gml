/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 75538A61
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "powerup[0]"
powerup[0] = 1;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 0A72F21F
/// @DnDArgument : "msg" ""debug powerup: {0}", powerup"
show_debug_message(string("debug powerup: {0}", powerup));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 26D688AC
/// @DnDArgument : "steps" "10 * 30"
alarm_set(0, 10 * 30);

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 44204DBB
/// @DnDArgument : "colour" "$FF11FFF7"
image_blend = $FF11FFF7 & $ffffff;
image_alpha = ($FF11FFF7 >> 24) / $ff;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 77E3AD5C
/// @DnDApplyTo : other
with(other) instance_destroy();