/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 59EFA22B
/// @DnDInput : 2
/// @DnDArgument : "expr" "random_range(0.1, 0.5)"
/// @DnDArgument : "expr_1" "random_range(-1, 1)"
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "var_1" "image_rotation"
speed = random_range(0.1, 0.5);
image_rotation = random_range(-1, 1);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1F0C9F0E
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "max" "350"
direction = (random_range(0, 350));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3AAC4B2F
/// @DnDArgument : "var" "image_angle"
/// @DnDArgument : "max" "360"
image_angle = (random_range(0, 360));