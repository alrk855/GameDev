extends Panel

@onready var pan : Panel = get_node("/root/Control/Panel2")

func _ready() -> void:
	create_tween().tween_property(pan, "modulate:a", 1, 2)

#optimizirano
