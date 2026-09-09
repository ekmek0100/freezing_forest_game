extends Node2D

@export var grid_size: int = 16
@export var block_scale: float = 2.5

var block_texture = load("res://ff_game_main_soil_with_snow.png")

func _unhandled_input(event):
	if event is InputEventMouseButton and event.pressed:
		var mouse_pos = get_global_mouse_position()
		
		# SOL TIK: Blok Koyma
		if event.button_index == MOUSE_BUTTON_LEFT:
			var snapped_pos = Vector2(
				floor(mouse_pos.x / grid_size) * grid_size,
				floor(mouse_pos.y / grid_size) * grid_size
			)
			place_block(snapped_pos)
			
		# SAĞ TIK: Blok Silme
		elif event.button_index == MOUSE_BUTTON_RIGHT:
			remove_block_at(mouse_pos)

func place_block(pos: Vector2):
	if block_texture:
		var new_block = StaticBody2D.new()
		new_block.global_position = pos
		new_block.name = "PlacedBlock" # Hangi blokları sileceğimizi ayırt etmek için isim veriyoruz
		
		var new_sprite = Sprite2D.new()
		new_sprite.texture = block_texture
		new_sprite.scale = Vector2(block_scale, block_scale)
		new_block.add_child(new_sprite)
		
		var collision_shape = CollisionShape2D.new()
		var rect_shape = RectangleShape2D.new()
		rect_shape.size = block_texture.get_size() * block_scale
		collision_shape.shape = rect_shape
		new_block.add_child(collision_shape)
		
		get_parent().add_child(new_block)

func remove_block_at(pos: Vector2):
	# Farenin altındaki nesneleri bulmak için bir ray/space sorgusu yapıyoruz
	var space_state = get_world_2d().direct_space_state
	var query = PhysicsPointQueryParameters2D.new()
	query.position = pos
	query.collide_with_bodies = true
	
	var results = space_state.intersect_point(query)
	for result in results:
		var collider = result.collider
		# Eğer tıkladığımız nesne bizim koyduğumuz bir bloksa silelim
		if collider is StaticBody2D and collider.name == "PlacedButton" or collider.name == "PlacedBlock":
			collider.queue_free() # Sahneden tamamen kaldırır
			break
