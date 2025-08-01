extends Control

@onready var task1 : RichTextLabel = $"CanvasLayer/Task Overview/ScrollContainer/GridContainer/Task1/Task1_text"
@onready var task2 : RichTextLabel = $"CanvasLayer/Task Overview/ScrollContainer/GridContainer/Task2/Task2_text"
@onready var layer : CanvasLayer = self.get_child(0)

func _ready() -> void:
	layer.layer = -3 # pozadi da sedi (invisible)
	layer.visible = false
	task1.visible_ratio = 0
	task2.visible_ratio = 0

func _process(_delta: float) -> void:
	if(Input.is_action_just_pressed("OPEN_TaskManager")):
		layer.visible = true
		if(layer.layer == -3):
			layer.layer = 1
		else: layer.layer = -3
