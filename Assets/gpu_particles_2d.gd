extends GPUParticles2D

func _ready():
	var mat = ParticleProcessMaterial.new()
	mat.emission_shape = ParticleProcessMaterial.EMISSION_SHAPE_BOX
	mat.emission_box_extents = Vector3(600, 600, 1)
	mat.direction = Vector3(0, 1, 0)
	mat.spread = 15
	mat.initial_velocity_min = 50
	mat.initial_velocity_max = 120
	mat.gravity = Vector3(20, 0, 0)
	mat.scale_min = 0.2
	mat.scale_max = 0.2
	
	process_material = mat
	amount = 150
	lifetime = 8.0
	preprocess = 8.0
	emitting = true
