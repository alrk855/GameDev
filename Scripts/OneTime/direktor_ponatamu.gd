extends Panel

@onready var aud : AudioStreamPlayer2D = $ponatamu/Click_sound

func _on_ponatamu_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/SCHOOL.tscn")


func _on_ponatamu_mouse_entered() -> void:
	aud.play()

#optimizirano
