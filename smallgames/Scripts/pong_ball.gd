extends CharacterBody2D


var speed = 400

func _ready() -> void:
	velocity = Vector2(speed, 200)

func _physics_process(delta: float) -> void:
	var collision := move_and_collide(velocity * delta)
	if collision:
		var normal := collision.get_normal()
		velocity = velocity.bounce(normal)
