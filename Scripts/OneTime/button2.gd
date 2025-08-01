extends Button

@export var transit : Tween.TransitionType
@onready var camera : Camera2D = get_node("/root/Control/Camera2D") # patot
@onready var hover_sound : AudioStreamPlayer2D = $Hover_sound
@onready var click_sound : AudioStreamPlayer2D = $Click_sound

func _pressed() -> void:
	click_sound.play()
	print("settings")
	var tween : Tween = create_tween()
	tween.tween_property(camera, "position", Vector2(0, 649), 1).set_trans(transit)

func _on_mouse_entered() -> void:
	hover_sound.play()

#optimzirano
