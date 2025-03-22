extends Button



func _ready() -> void:
	visible = false

#If game is paused, player is dead, and button is hidden -> show button
func _process(delta: float) -> void:
	if get_tree().paused == true and owner.health <= 0 and visible == false:
		visible = true

func _on_pressed() -> void:
	get_tree().paused = false
	SaveData.gold += owner.gold
	SaveData.set_and_save()
	get_tree().change_scene_to_file("res://main_menu.tscn")
