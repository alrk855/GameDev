extends Control

@onready var task1 : RichTextLabel = $"CanvasLayer/Task Overview/ScrollContainer/GridContainer/Task1/Task1_text"
@onready var layer : CanvasLayer = self.get_child(0)
func _ready() -> void:
	task1.text = "   🎯 Task Added       
Prepare for Quiz: [Selected Topic]
🗓️ Quiz Scheduled: 
Friday Morning"
	layer.layer = -3

func _process(_delta: float) -> void:
	if(Input.is_action_just_pressed("OPEN_TaskManager")):
		print("task manager")
		if(layer.layer == -3):
			layer.layer = 1
		else: layer.layer = -3
