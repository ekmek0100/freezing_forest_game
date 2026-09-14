extends Node

func _ready():
	$Audio_background_music.play()
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_up"):
		$Audio_jump.play()
