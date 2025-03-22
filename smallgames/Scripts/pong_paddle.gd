extends CharacterBody2D

var speed : int = 500

@onready var x_pos = self.position.x

func get_direction() -> float:
	return Input.get_action_strength("action_down") - Input.get_action_strength("action_up")

func _physics_process(delta: float) -> void:
	var direction : Vector2 = Vector2(0, get_direction())
	velocity = direction * speed
	move_and_slide()
