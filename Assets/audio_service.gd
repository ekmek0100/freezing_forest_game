extends Node

func _ready():
	$Audio_background_music.play()
	
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_up"):
		await get_tree().create_timer(0.1).timeout
		$Audio_jump.play()
	if Input.is_action_just_pressed("Press_W"):
		$Audio_jump.play()
