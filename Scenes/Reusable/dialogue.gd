extends Control

@onready var timerr : Timer = $change_text
var indeks : int = 0
@onready var dijalog : RichTextLabel = $Dialogue

const TEXT_CHANGE_TIME : int = 3 # Kolku brzo ke se menuva tekstot
signal dialogue

func _ready() -> void:
	dijalog.text = "The classroom grows quiet. The teacher enters briskly, dropping a folder on the desk."
	timerr.start()
	await timerr.timeout
	create_tween().tween_property(dijalog, "visible_characters", 100, TEXT_CHANGE_TIME)
	timerr.start()
	await timerr.timeout
	dijalog.text = "Alright, listen up."
	dijalog.visible_characters = 0
	create_tween().tween_property(dijalog, "visible_characters", 100, TEXT_CHANGE_TIME)
	timerr.start()
	await timerr.timeout
	dijalog.text = "This time, you get to choose the subject. Don’t waste the opportunity."
	dijalog.visible_characters = 0
	create_tween().tween_property(dijalog, "visible_characters", 100, TEXT_CHANGE_TIME)
	timerr.start()
	await timerr.timeout
	dijalog.text = "The more you prepare, the less likely you’ll embarrass yourself."
	dijalog.visible_characters = 0
	create_tween().tween_property(dijalog, "visible_characters", 100, TEXT_CHANGE_TIME)
	timerr.start()
	await timerr.timeout
	dialogue.emit()
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
	
