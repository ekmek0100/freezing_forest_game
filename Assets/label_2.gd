extends Label
func _process(_delta: float) -> void:
	if GlobalVariables.is_blocks_reached_limit == true:
		text = str ("Reached block placing 
		limit!")
	else:
		text = str ("Blocks remain:")
