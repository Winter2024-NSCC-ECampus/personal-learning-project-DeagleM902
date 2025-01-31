extends Node

var score = 0
@onready var coin_label = $UI/HBoxContainer/CoinsLabel
signal coin_collected(value:int)

func add_point():
	score += 1
	emit_signal("coin_collected", score)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
