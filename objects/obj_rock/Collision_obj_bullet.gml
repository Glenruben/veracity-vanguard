/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 736A64AC
/// @DnDApplyTo : {obj_game}
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "points"
with(obj_game) {
points += 50;

}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 38F2DB5E
/// @DnDApplyTo : {obj_game}
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "powerup_countdown"
with(obj_game) {
powerup_countdown += -1;

}

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 5DC84F96
/// @DnDApplyTo : {obj_game}
/// @DnDArgument : "msg" ""Debug countdown: {0}", powerup_countdown"
with(obj_game) {
show_debug_message(string("Debug countdown: {0}", powerup_countdown));
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 07738326
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 75B2D176
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "color" "$FFABBFCC"
effect_create_above(0, x + 0, y + 0, 0, $FFABBFCC & $ffffff);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 434B8A47
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "max" "360"
direction = (random_range(0, 360));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 045C89FB
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_rock_big"
if(sprite_index == spr_rock_big)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 79DD7CAB
	/// @DnDParent : 045C89FB
	/// @DnDArgument : "spriteind" "spr_rock_small"
	/// @DnDSaveInfo : "spriteind" "spr_rock_small"
	sprite_index = spr_rock_small;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7A9979D7
	/// @DnDParent : 045C89FB
	/// @DnDArgument : "function" "instance_copy"
	/// @DnDArgument : "arg" "true"
	instance_copy(true);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2F0559E8
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2BED2F4E
	/// @DnDParent : 2F0559E8
	/// @DnDArgument : "var" "instance_number(obj_rock)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "12"
	if(instance_number(obj_rock) < 12)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2D3293E7
		/// @DnDParent : 2BED2F4E
		/// @DnDArgument : "spriteind" "spr_rock_big"
		/// @DnDSaveInfo : "spriteind" "spr_rock_big"
		sprite_index = spr_rock_big;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 13B589EE
		/// @DnDParent : 2BED2F4E
		/// @DnDArgument : "expr" "-100"
		/// @DnDArgument : "var" "x"
		x = -100;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 34B3C4F6
	/// @DnDParent : 2F0559E8
	else
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 59649038
		/// @DnDParent : 34B3C4F6
		instance_destroy();
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1F76D6F9
/// @DnDApplyTo : {obj_game}
/// @DnDArgument : "expr" "powerup_countdown == 0"
with(obj_game) var l1F76D6F9_0 = powerup_countdown == 0;
if(l1F76D6F9_0)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 552008F9
	/// @DnDParent : 1F76D6F9
	/// @DnDArgument : "var" "obj"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "obj_powerup_spread"
	var obj = choose(obj_powerup_spread);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0C68D63E
	/// @DnDParent : 1F76D6F9
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj"
	instance_create_layer(x + 0, y + 0, "Instances", obj);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F70E690
	/// @DnDApplyTo : {obj_game}
	/// @DnDParent : 1F76D6F9
	/// @DnDArgument : "expr" "7"
	/// @DnDArgument : "var" "powerup_countdown"
	with(obj_game) {
	powerup_countdown = 7;
	
	}
}