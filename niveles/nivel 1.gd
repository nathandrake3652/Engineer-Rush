extends Node3D

@export var escenas: Array[PackedScene] = []

var amount = 20
var rng = RandomNumberGenerator.new()
var offset = 20
func _ready():
	for n in amount:
		spawnescena(n*offset)


func _process(delta):
	pass
func spawnescena(n):
	rng.randomize()
	var num = rng.randi_range(0, escenas.size()-1)
	var instanciar = escenas[num].instantiate()
	instanciar.position.z =n
	add_child(instanciar)
	
