extends Node2D

@export var player : CharacterBody2D
@export var enemy : PackedScene

#distance for enemies to spawn
@export var distance : float = 650

var minute : int:
	set(value):
		minute = value
		%Minute.text = str(value)

var second: int:
	set(value):
		second = value
		if second >= 60:
			second -= 60
			minute +=1
		%Second.text = str(second).lpad(2,'0')

#add enemies to the scene tree
func spawn(pos : Vector2):
	var enemy_instance = enemy.instantiate()
	
	enemy_instance.position = pos
	enemy_instance.player_reference = player
	
	get_tree().current_scene.add_child(enemy_instance)
	
#get a random location for enemy spawn
func get_random_position() -> Vector2:
	return player.position + distance * Vector2.RIGHT.rotated(randf_range(0, 2 * PI))
	
#random for amount of enemies
func amount(number : int = 1):
	for i in range(number):
		spawn(get_random_position())

func _on_timer_timeout() -> void:
	second += 1
	amount(second % 10)
