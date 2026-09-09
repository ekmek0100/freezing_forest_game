extends Node2D

@export var grid_size: int = 16
@export var block_scale: float = 2.5

var block_texture = load("res://ff_game_main_soil_with_snow.png")#images here

func _unhandled_input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var mouse_pos = get_global_mouse_position()
		var snapped_pos = Vector2(
			floor(mouse_pos.x / grid_size) * grid_size,
			floor(mouse_pos.y / grid_size) * grid_size
		)
		place_block(snapped_pos)

func place_block(pos: Vector2):
	if block_texture:
		var new_block = StaticBody2D.new()
		new_block.global_position = pos
		new_block.input_pickable = true
		
		var new_sprite = Sprite2D.new()
		new_sprite.texture = block_texture
		new_sprite.scale = Vector2(block_scale, block_scale)
		new_block.add_child(new_sprite)
		
		var collision_shape = CollisionShape2D.new()
		var rect_shape = RectangleShape2D.new()
		rect_shape.size = block_texture.get_size() * block_scale
		collision_shape.shape = rect_shape
		new_block.add_child(collision_shape)
		
		# Sağ tıklandığında bloğun silinmesi
		new_block.input_event.connect(func(_viewport, event, _shape_idx):
			if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_RIGHT:
				new_block.queue_free()
		)
		
		get_parent().add_child(new_block)
