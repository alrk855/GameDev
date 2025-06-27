extends RichTextLabel

@onready var anim_player : AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	var anim : Animation = anim_player.get_animation("fade")
	
	anim.loop_mode = Animation.LOOP_PINGPONG  # Goes forward then backward
	
	anim_player.play("fade")

#optimizirano
