extends CanvasLayer


func _on_jouer_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Jeu.tscn")

func _on_instructions_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/instructions.tscn")

func _on_quitter_pressed() -> void:
	get_tree().quit()
