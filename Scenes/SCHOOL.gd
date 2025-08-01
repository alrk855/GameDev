extends Control

@onready var classroom : TextureButton = $"Classroom"
@onready var secretary : TextureButton = $"Secretary"
@onready var professor : TextureButton = $"Professor"
@onready var city : TextureButton = $"City"


func _on_classroom_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/CLASSROOM.tscn")

func _on_secretary_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/SECRETARY_OFFICE.tscn")

func _on_professor_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/PROFESSOR_OFFICE.tscn")

func _on_city_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/City.tscn")
