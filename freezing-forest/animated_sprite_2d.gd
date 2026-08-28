extends AnimatedSprite2D
var speed = 20
func _process(_delta: float) -> void:
	var control_x_right = Input.is_action_pressed("ui_right")
	var control_y_down = Input.is_action_pressed("ui_up")
	var control_x_left = Input.is_action_pressed("ui_left")
	var control_y_up = Input.is_action_pressed("ui_down")
	#key controls end
	var sticky_y = position.y
	var sticky_x = position.x
	if control_y_down :
		sticky_y += 20
		await get_tree().create_timer(0.1).timeout
	if control_x_right:
		sticky_x += 1
		await get_tree().create_timer(0.1).timeout
		position.x += sticky_x
	if control_y_down:
		sticky_y -= 1
		await get_tree().create_timer(0.1).timeout
		position.y -= sticky_y
	if control_x_left:
		sticky_x -= 1
		await get_tree().create_timer(0.1).timeout
	if control_y_up:
		sticky_y += 1
		position.y += sticky_y
