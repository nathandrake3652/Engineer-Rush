extends MeshInstance3D

#<<<<<<< Updated upstream
@onready var nivel= $".." 

@onready var puntaje = 	$"../../UserInterface/PanelSuperior/Score/ScoreNumber"
#=======
#@onready var nivel= $"../" 
var PowerUps = preload("res://Power ups/PowerUp1.tscn")
#>>>>>>> Stashed changes
var velocidad = 10 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.z -= velocidad *delta
	if position.z < -45:
		puntaje._on_score(velocidad)
		nivel.spawnescena(position.z+(nivel.amount*nivel.offset))	
		queue_free()
		

func inst(pos):
	var instance =PowerUps.instantiate()
	instance.position = pos
	add_child(instance)
	

func _on_timer_timeout():
	inst(Vector3(valor_x(),2,valor_z()))
	


func valor_x():
	var values = [-3.5, 0, 3.5]
	var random_index = randi() % values.size()
	return values[random_index]
	


func valor_z():
	var values = [5, 10,15]
	var random_index = randi() % values.size()
	return values[random_index]
