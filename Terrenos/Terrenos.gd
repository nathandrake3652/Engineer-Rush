extends MeshInstance3D

@onready var nivel= $"../" 

var velocidad = 10 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.z -= velocidad *delta
	if position.z < -20:
		nivel.spawnescena(position.z+(nivel.amount*nivel.offset))
		queue_free()
		
