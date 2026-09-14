extends Label

func _process(delta: float) -> void:
	text = str (int(GlobalVariables.timer_seconds))
