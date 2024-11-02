extends RigidBody2D

@export var content_scene : PackedScene : set = set_content_scene

var _content
var _bumps := 0

func set_content_scene(v:PackedScene) -> void:
	content_scene = v
	_content = content_scene.instantiate()
	%ContentSprite2D.texture = _content.get_texture() # FIXME strong assumption

func _on_body_entered(body:RigidBody2D):
	if body is Ship:
		if body.is_dashing():
			_content.global_position = global_position
			get_parent().add_child.call_deferred(_content)
			_content.touched_by.call_deferred(body) # FIXME strong assumption
			queue_free()
		else:
			_bumps += 1
			%Label.visible = _bumps >= 3
