extends Button
@onready var hover_sound : AudioStreamPlayer2D = $Hover_sound
@onready var panel : Panel = get_node("/root/Control/MAIN_UPATSTVO")
@onready var click_sound : AudioStreamPlayer2D = $Click_sound

func _pressed() -> void:
	click_sound.play()
	panel.visible = true
#queue_free()


func _on_mouse_entered() -> void:
	hover_sound.play()

#optimizirano
