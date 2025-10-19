extends CanvasLayer


func _ready() -> void:
	$AnimatedSprite2D.play("run")

func _on_retour_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")

func _on_jouer_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Jeu.tscn")
