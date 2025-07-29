extends Control

@onready var anim : AnimationPlayer = $Button_Science/AnimationPlayer
@onready var anim2 : AnimationPlayer = $Button_Geography/AnimationPlayer
@onready var anim3 : AnimationPlayer = $Button_Math/AnimationPlayer
@onready var anim4 : AnimationPlayer = $Button_General/AnimationPlayer
@onready var anim5 : AnimationPlayer = $Button_Macedonian/AnimationPlayer

@onready var b1 : Button = $Button_Science #0
@onready var b2 : Button = $Button_Geography #1
@onready var b3 : Button = $Button_Math #2
@onready var b4 : Button = $Button_General #3
@onready var b5 : Button = $Button_Macedonian #4
signal choose

@onready var taskLabel : Label = $"New Tasks Added"
@onready var anima : AnimationPlayer = $"New Tasks Added/anim"
var chosen : int = 0 #koga ke stigne 2 gotovo

func _on_button_science_pressed() -> void:
	if(chosen == 0):
		chosen = chosen + 1
		Stats.subject_1 = 0
	elif(chosen == 1):
		Stats.subject_2 = 0
		finish_choosing()

func _on_button_geography_pressed() -> void:
	if(chosen == 0):
		chosen = chosen + 1
		Stats.subject_1 = 1
	elif(chosen == 1):
		Stats.subject_2 = 1
		finish_choosing()

func _on_button_math_pressed() -> void:
	if(chosen == 0):
		chosen = chosen + 1
		Stats.subject_1 = 2
	elif(chosen == 1):
		Stats.subject_2 = 2
		finish_choosing()

func _on_button_general_pressed() -> void:
	if(chosen == 0):
		chosen = chosen + 1
		Stats.subject_1 = 3
	elif(chosen == 1):
		Stats.subject_2 = 3
		finish_choosing()

func _on_button_macedonian_pressed() -> void:
	if(chosen == 0):
		chosen = chosen + 1
		Stats.subject_1 = 4
	elif(chosen == 1):
		Stats.subject_2 = 4
		finish_choosing()

func _ready() -> void:
	b1.position = Vector2(-300, 150)
	b2.position = Vector2(-300, 260)
	b3.position = Vector2(1300, 150)
	b4.position = Vector2(1300, 260)
	b5.position = Vector2(450, -200)
	taskLabel.position = Vector2(-300, 15)

func _on_dialouge_ui_dialogue() -> void: #koga ke zavrsi dialogot
	create_tween().tween_property(b1, "position", Vector2(120, 150), 0.2).set_trans(Tween.TRANS_SPRING)
	create_tween().tween_property(b2, "position", Vector2(120, 260), 0.3).set_trans(Tween.TRANS_SPRING)
	create_tween().tween_property(b3, "position", Vector2(800, 150), 0.4).set_trans(Tween.TRANS_SPRING)
	create_tween().tween_property(b4, "position", Vector2(800, 260), 0.5).set_trans(Tween.TRANS_SPRING)
	create_tween().tween_property(b5, "position", Vector2(430, 210), 0.6).set_trans(Tween.TRANS_SPRING)

func finish_buttons() -> void:
	anim.play("Day1_button")
	await anim.animation_finished
	anim.queue_free()
	anim2.play("Day1_button2")
	await anim2.animation_finished
	anim2.queue_free()
	anim3.play("Day1_button3")
	await anim3.animation_finished
	anim3.queue_free()
	anim4.play("Day1_button4")
	await anim4.animation_finished
	anim4.queue_free()
	anim5.play("Day1_button5")
	await anim5.animation_finished
	anim5.queue_free()

func finish_choosing() -> void:
	choose.emit()
	Stats.subject_chosen = true
	finish_buttons() 
	print(Stats.subject_1)
	print(Stats.subject_2)
