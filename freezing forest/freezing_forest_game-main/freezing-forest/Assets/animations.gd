#animation code st0arts
extends AnimatedSprite2D
var timer = 0
var days = 2
var is_animation_enabled
var key = InputEvent
#----------------------------------------------------------------------------------------------------------------------------------------#
func _process(delta: float) -> void:
	if key:
			timer = 0
			stop()
			is_animation_enabled = false
			frame = 0
	timer += delta
#---------------------------------------------------------------------------------------------------------------(connected to delta btw)#
	if timer >= 1.0 and days >= 4:
		play("idle_sticky_day4+")
		is_animation_enabled = true
		
	if timer > 1.0 and days == 2 and 3:
		play("idle_sticky_day2")
		is_animation_enabled = true
		
	if timer > 1.0 and days == 1:
		play("idle_sticky_first_day")
		is_animation_enabled = true
		
	#end of animation code
	if days == 1 and not is_animation_enabled:
		play("idle_sticky_first_day")
		await get_tree().create_timer(0.5).timeout
		frame = 0
		stop()
		
	
	if days == 2 and not is_animation_enabled:
		play("idle_sticky_day2")
		await get_tree().create_timer(0.5).timeout
		frame = 0
	
	
		
	if days == 3 and not is_animation_enabled:
		play("idle_sticky_day2")
		await get_tree().create_timer(0.5).timeout
		frame = 0
		stop()
		
	if days >= 4 and is_animation_enabled:
		play("idle_sticky_day4+")
		await get_tree().create_timer(0.5).timeout
		frame = 0
		stop()
