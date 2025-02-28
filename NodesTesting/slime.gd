extends Node2D

@export var speed = 40
var direction = 1

@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft


func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		direction = -1
		$AnimatedSprite2D.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		$AnimatedSprite2D.flip_h = false
	position.x += speed * delta * direction
