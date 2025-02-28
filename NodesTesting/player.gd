extends CharacterBody2D

@onready var game_manager = %GameManager

@export var SPEED = 150.0
@export var JUMP_VELOCITY = -300.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var jump_effect = $JumpNoise
var is_dead = false


func _ready() -> void:
	is_dead = false

func _physics_process(delta: float) -> void:
	#Skip all if player is dead
	if is_dead:
		return
	
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("move_up") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		jump_effect.play()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED * 0.25)
	
	#Handle animations
	$AnimatedSprite2D.play()
	
	if velocity.x != 0:
		$AnimatedSprite2D.flip_h = velocity.x < 0
		if is_on_floor():
			$AnimatedSprite2D.animation = "run"
	
	if velocity.length() == 0:
		$AnimatedSprite2D.animation = "idle"
	
	move_and_slide()

func player_death() -> void:
	print("player script runnning")
	is_dead = true
	$AnimatedSprite2D.animation = "dead"
	
