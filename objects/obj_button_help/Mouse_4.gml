/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 23148B94
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 186FE9B7
/// @DnDArgument : "expr" "instance_exists(obj_help_text)"
if(instance_exists(obj_help_text))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1B0712B0
	/// @DnDApplyTo : {obj_help_text}
	/// @DnDParent : 186FE9B7
	with(obj_help_text) instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 72B88ED7
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 122D56D8
	/// @DnDParent : 72B88ED7
	/// @DnDArgument : "xpos" "room_width / 2"
	/// @DnDArgument : "ypos" "room_height - 100"
	/// @DnDArgument : "objectid" "obj_help_text"
	/// @DnDSaveInfo : "objectid" "obj_help_text"
	instance_create_layer(room_width / 2, room_height - 100, "Instances", obj_help_text);
}