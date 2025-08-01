extends Button

@onready var anim_player : AnimationPlayer = $AnimationPlayer
@onready var hover_sound : AudioStreamPlayer2D = $Hover_sound
@onready var click_sound : AudioStreamPlayer2D = $Click_sound

func _ready() -> void:
	var anim : Animation = anim_player.get_animation("test_animation3")
	
	anim.loop_mode = Animation.LOOP_PINGPONG
	
	anim_player.play("test_animation3")

func _pressed() -> void:
	click_sound.play()
	print("quit")
	if OS.has_feature("standalone"):  # Only quits on desktop
		get_tree().quit()

func _on_mouse_entered() -> void:
	hover_sound.play()

#optimizirano
