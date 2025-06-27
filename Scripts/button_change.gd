extends Button

@onready var camera : Camera2D = get_node("/root/Control/Camera2D") # patot
@onready var orn1 : BoxContainer = get_node("/root/Control/OrnamentContainerLeft")
@onready var orn2 : BoxContainer = get_node("/root/Control/OrnamentContainerRight")
@onready var mainOrn : RichTextLabel = get_node("/root/Control/OrnamentMAIN")
@onready var aud : AudioStreamPlayer2D = $swoosh

var a : bool = false
@export var transit : Tween.TransitionType

func _pressed() -> void:
	if(a == false):
		a = true
		aud.play()
		var tween : Tween = create_tween()
		tween.tween_property(camera, "position", Vector2(0, 0), 1).set_trans(transit)
		await tween.finished
		create_tween().tween_property(mainOrn, "modulate:a", 1.0 , 0.5).set_trans(transit)
		create_tween().tween_property(orn1, "position", Vector2(150, 228), 1).set_trans(transit) #left
		create_tween().tween_property(orn2, "position", Vector2(690, 228), 1).set_trans(transit) #right

#optimizirano
