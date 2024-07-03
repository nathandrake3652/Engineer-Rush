extends MeshInstance3D

#<<<<<<< Updated upstream
@onready var nivel= $".." 

@onready var puntaje = 	$"../../UserInterface/PanelSuperior/Score/ScoreNumber"
#=======
#@onready var nivel= $"../" 
var PowerUps1 = preload("res://Power ups/PowerUp1.tscn")
#>>>>>>> Stashed changes
var PowerUps2 = preload("res://Power ups/PowerUp2.tscn")
var PowerUps3 = preload("res://Power ups/PowerUp3.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.z -= Variables.velocidad*delta
	if position.z < -45:
		puntaje._on_score(Variables.velocidad)
		nivel.spawnescena(position.z+(nivel.amount*nivel.offset))	
		queue_free()
		

func inst(pos,tipo):
	if tipo == 1:
		var instance =PowerUps1.instantiate()
		instance.position = pos
		add_child(instance)
	if tipo ==2:
		var instance =PowerUps2.instantiate()
		instance.position = pos
		add_child(instance)
	if tipo ==3:
		var instance =PowerUps3.instantiate()
		instance.position = pos
		add_child(instance)
	

func _on_timer_timeout():
	var tipo = get_random_value()
	inst(Vector3(valor_x(),2,valor_z()),tipo)
	


func valor_x():
	var values = [-3.5, 0, 3.5]
	var random_index = randi() % values.size()
	return values[random_index]
	


func valor_z():
	var values = [5, 10,15]
	var random_index = randi() % values.size()
	return values[random_index]

func get_random_value():
	return randi() % 3 + 1
