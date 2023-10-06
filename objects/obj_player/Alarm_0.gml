/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 67FA1B84
/// @DnDArgument : "var" "powerup[0]"
powerup[0] = 0;

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 55E9ACE5
image_blend = $FFFFFFFF & $ffffff;
image_alpha = ($FFFFFFFF >> 24) / $ff;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 2E8EBA7C
/// @DnDArgument : "msg" ""debug powerup: {0}", powerup"
show_debug_message(string("debug powerup: {0}", powerup));