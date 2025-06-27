extends Button

@onready var anim_player : AnimationPlayer = $AnimationPlayer
@onready var hover_sound : AudioStreamPlayer2D = $Hover_sound
@onready var click_sound : AudioStreamPlayer2D = $Click_sound
@onready var modul : Control = get_node("/root/Control")

func _ready() -> void:
	var anim : Animation = anim_player.get_animation("test_animation")
	
	anim.loop_mode = Animation.LOOP_PINGPONG  
	
	anim_player.play("test_animation")

func _on_mouse_entered() -> void:
	hover_sound.play()

func _pressed() -> void:
	click_sound.play()

	var tween : Tween = create_tween()
	tween.tween_property(modul, "modulate:a", 0, 1.0).set_trans(Tween.TRANS_EXPO)

	await tween.finished  # Wait for tween to complete
	await click_sound.finished  # Wait for sound to finish
	get_tree().change_scene_to_file("res://Scenes/Intro.tscn")

#optimizirano
