extends Area2D

@onready var timer: Timer = $Timer
signal player_death

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("Hazard")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	print("You Died!")
	emit_signal("player_death")
	Engine.time_scale = 0.5
	timer.start()
	

func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
