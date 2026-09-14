extends Label

func _process(_delta: float) -> void:
	text = str(GlobalVariables.remain_blocks_inv)
	
	if label_settings:
		if GlobalVariables.remain_blocks_inv == 0:
			label_settings.font_color = Color(1, 0, 0, 1) # Kırmızı
		else:
			label_settings.font_color = Color(0.0, 0.0, 0.0, 1.0) # Siyah
