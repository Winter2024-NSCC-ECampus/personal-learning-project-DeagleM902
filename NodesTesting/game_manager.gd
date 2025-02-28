extends Node

var score = 0
signal coin_collected(value:int)
@onready var player: CharacterBody2D = %Player

func add_point():
	score += 1
	emit_signal("coin_collected", score)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	call_deferred("_connect_hazard_signals")

func _on_player_death() -> void:
	print("death signal")
	%Player.player_death()

func _connect_hazard_signals() -> void:
	for hazard in get_tree().get_nodes_in_group("Hazard"):
		hazard.connect("player_death", Callable(self, "_on_player_death"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
