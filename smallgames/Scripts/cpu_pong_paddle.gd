extends CharacterBody2D

var ball : CharacterBody2D

var speed : int = 500

@onready var x_pos = self.position.x

func _ready() -> void:
	ball = get_parent().get_node("pong_ball")

func _physics_process(delta: float) -> void:
	global_position.y = ball.global_position.y
