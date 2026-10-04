#animation code starts
extends AnimatedSprite2D
var timer = 0
var days = GlobalVariables.timer_days
var timer_animation
var is_pressed_to_any_key

#----------------------------------------------------------------------------------------------------------------------------------------#
func _process(delta: float) -> void:
	timer_animation == delta
	if is_pressed_to_any_key == true:
			timer_animation = 0 
			stop()
			frame = 0
#---------------------------------------------------------------------------------------------------------------(connected to delta btw)#
	if Input.is_action_just_pressed("ui_left") or Input.is_action_just_pressed("Press_A") :
		timer_animation = 0
		is_pressed_to_any_key = true
		play("sticky_animation_walk_left_day1")
	if Input.is_action_just_pressed("ui_right") or Input.is_action_just_pressed("Press_D"):
		is_pressed_to_any_key = true
		timer_animation = 0 
		play("sticky_animation_walk_right_day1")
	if is_pressed_to_any_key == false and timer_animation == 1:
		is_pressed_to_any_key = true
		timer_animation = 0
		play("sticky_animation_idle_day1")
	if is_pressed_to_any_key == false and timer_animation == 5:
		is_pressed_to_any_key = true
		timer_animation = 0
		play("sticky_animation_idle_wait_day1")
		await get_tree().create_timer(0.5).timeout
	if Input.is_action_just_pressed("Press_S") or Input.is_action_just_pressed("ui_down"):
		play("sticky_animation_ground_pound_day1")
		await get_tree().create_timer(0.5).timeout
		play("sticky_animation_idle_day1")
		
	else:
		is_pressed_to_any_key = false
