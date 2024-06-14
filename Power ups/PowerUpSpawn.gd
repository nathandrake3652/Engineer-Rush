extends Node3D

var PowerUp1 = preload("res://Power ups/PowerUp1.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	var instance  = PowerUp1.instantiate()
	add_child(instance)

