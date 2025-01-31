extends Node2D

@onready var coins_label = $UI/HBoxContainer/CoinsLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_game_manager_coin_collected(value: int) -> void:
	coins_label.text = str(value)
