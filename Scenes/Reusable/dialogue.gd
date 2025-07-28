extends Control

@onready var timerr : Timer = $change_text
var indeks : int = 0
@onready var dijalog : RichTextLabel = $Dialogue

const TEXT_CHANGE_TIME : int = 2 # Kolku brzo ke se menuva tekstot
signal dialogue

func _ready() -> void:
	dijalog.text = "The classroom grows quiet. The teacher enters briskly, dropping a folder on the desk."
	timerr.start()
	await timerr.timeout
	create_tween().tween_property(dijalog, "visible_characters", 100, TEXT_CHANGE_TIME)
	timerr.start()
	await timerr.timeout
	dijalog.text = "Alright, listen up. This is important."
	dijalog.visible_characters = 0
	create_tween().tween_property(dijalog, "visible_characters", 100, TEXT_CHANGE_TIME)
	timerr.start()
	await timerr.timeout
	dijalog.text = "This Friday, you’ll be taking your Final Exams — standardized, written, no room for games."
	dijalog.visible_characters = 0
	create_tween().tween_property(dijalog, "visible_characters", 100, TEXT_CHANGE_TIME)
	timerr.start()
	await timerr.timeout
	dijalog.text = "You’ll get to pick two subjects. We’ve submitted your preferences, but the responsibility is yours."
	dijalog.visible_characters = 0
	create_tween().tween_property(dijalog, "visible_characters", 110, TEXT_CHANGE_TIME)
	timerr.start()
	await timerr.timeout
	dijalog.text = "Your results go directly on your Grade Transcript. These grades will affect your scholarship chances and more."
	dijalog.visible_characters = 0
	create_tween().tween_property(dijalog, "visible_characters", 120, TEXT_CHANGE_TIME)
	timerr.start()
	await timerr.timeout
	dijalog.text = "Choose wisely — and study. No second chances."
	dijalog.visible_characters = 0
	create_tween().tween_property(dijalog, "visible_characters", 50, TEXT_CHANGE_TIME)
	timerr.start()
	await timerr.timeout
	dialogue.emit() #_on_day_1_choose()
	create_tween().tween_property(dijalog, "visible_characters", 0, 1)


func _on_day_1_choose() -> void: 
	dijalog.text = "Noted. The quiz will be based on that topic."
	create_tween().tween_property(dijalog, "visible_characters", 100, TEXT_CHANGE_TIME)
	timerr.start()
	await timerr.timeout
	dijalog.visible_characters = 0
	dijalog.text = "If you’re smart, you’ll start preparing today."
	create_tween().tween_property(dijalog, "visible_characters", 100, TEXT_CHANGE_TIME)
	timerr.start()
	await timerr.timeout
	dijalog.visible_characters = 0
	dijalog.text = "You can study at home. Or not. Your call."
	create_tween().tween_property(dijalog, "visible_characters", 100, TEXT_CHANGE_TIME)
	
