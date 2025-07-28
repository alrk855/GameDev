extends Control

@onready var task1 : RichTextLabel = $"CanvasLayer/Task Overview/ScrollContainer/GridContainer/Task1/Task1_text"

func _ready() -> void:
	task1.text = "   🎯 Task Added       
Prepare for Quiz: [Selected Topic]
🗓️ Quiz Scheduled: 
Friday Morning"
