extends GPUParticles2D

func _ready():
	var mat = ParticleProcessMaterial.new()
	mat.emission_shape = ParticleProcessMaterial.EMISSION_SHAPE_BOX
	mat.emission_box_extents = Vector3(600, 600, 1)
	mat.direction = Vector3(600, 600, 1)
	mat.spread = 60
	mat.initial_velocity_min = 50
	mat.initial_velocity_max = 120
	mat.gravity = Vector3(20, 20, 1)
	mat.scale_min = 0.2
	mat.scale_max = 0.2
	
	process_material = mat
	amount = 250
	lifetime = 10.0
	preprocess = 10.0
	emitting = true
