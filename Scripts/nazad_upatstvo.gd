extends Button

@onready var hover_sound : AudioStreamPlayer2D = $Hover_sound
@onready var upatstvo : Panel = get_node("/root/Control/MAIN_UPATSTVO")
@onready var aud : AudioStreamPlayer2D = $Click_sound

func _on_mouse_entered() -> void:
	hover_sound.play()

func _pressed() -> void:
	upatstvo.visible = false
	aud.play()

#optimizirano
