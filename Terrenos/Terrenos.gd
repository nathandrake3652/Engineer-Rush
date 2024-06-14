extends MeshInstance3D

@onready var nivel= $".." 

@onready var puntaje = 	$"../../UserInterface/PanelSuperior/Score/ScoreNumber"
var velocidad = 10 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.z -= velocidad *delta
	if position.z < -45:
		puntaje._on_score(velocidad)
		nivel.spawnescena(position.z+(nivel.amount*nivel.offset))	
		queue_free()
		
