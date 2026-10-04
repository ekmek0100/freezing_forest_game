extends CharacterBody2D
const SPEED = 300
const JUMP_VELOCITY = -600
const JUMP_VELOCITY_GROUND_POUND = 600
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if (Input.is_action_just_pressed("ui_up") or Input.is_action_just_pressed("Press_W")) and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if Input.is_physical_key_pressed(KEY_D):
		velocity.x =+ SPEED
	if Input.is_physical_key_pressed(KEY_A):
		velocity.x =- SPEED
		
	if Input.is_action_just_pressed("Press_S") or Input.is_action_just_pressed("ui_down"):
		velocity.y = JUMP_VELOCITY_GROUND_POUND
		GlobalVariables.is_sticky_did_ground_pound = true
	else:
		GlobalVariables.is_sticky_did_ground_pound = false
	
	
	move_and_slide()
