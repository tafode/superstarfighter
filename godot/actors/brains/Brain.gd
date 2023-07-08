extends Node2D
class_name Brain

var controllee : set = set_controllee
var target_velocity : Vector2
var rotation_request : float

signal charge
signal release

func set_controllee(v) -> void:
	controllee = v

func get_target_velocity() -> Vector2:
	return target_velocity
	
func get_rotation_request() -> float:
	return rotation_request
	
func tick() -> void:
	pass
