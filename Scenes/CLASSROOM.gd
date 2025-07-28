extends Control

@onready var anim : AnimationPlayer = $Button_Science/AnimationPlayer
@onready var anim2 : AnimationPlayer = $Button_Geography/AnimationPlayer
@onready var anim3 : AnimationPlayer = $Button_Math/AnimationPlayer
@onready var anim4 : AnimationPlayer = $Button_General/AnimationPlayer

@onready var b1 : Button = $Button_Science
@onready var b2 : Button = $Button_Geography
@onready var b3 : Button = $Button_Math
@onready var b4 : Button = $Button_General
signal choose

func _on_button_science_pressed() -> void:
	if(Stats.subject_chosen == false):
		Stats.subject_1 = 0
		choose.emit()
		Stats.subject_chosen = true
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

func _on_button_geography_pressed() -> void:
	if(Stats.subject_chosen == false):
		Stats.subject_1 = 1
		choose.emit()
		Stats.subject_chosen = true
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

func _on_button_math_pressed() -> void:
	if(Stats.subject_chosen == false):
		Stats.subject_1 = 2
		choose.emit()
		Stats.subject_chosen = true
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

func _on_button_general_pressed() -> void:
	if(Stats.subject_chosen == false):
		Stats.subject_1 = 3
		choose.emit()
		Stats.subject_chosen = true
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

func _ready() -> void:
	b1.position = Vector2(-300, 150)
	b2.position = Vector2(-300, 260)
	b3.position = Vector2(1300, 150)
	b4.position = Vector2(1300, 260)

func _on_dialouge_ui_dialogue() -> void:
	create_tween().tween_property(b1, "position", Vector2(120, 150), 0.2).set_trans(Tween.TRANS_SPRING)
	create_tween().tween_property(b2, "position", Vector2(120, 260), 0.3).set_trans(Tween.TRANS_SPRING)
	create_tween().tween_property(b3, "position", Vector2(800, 150), 0.4).set_trans(Tween.TRANS_SPRING)
	create_tween().tween_property(b4, "position", Vector2(800, 260), 0.5).set_trans(Tween.TRANS_SPRING)
