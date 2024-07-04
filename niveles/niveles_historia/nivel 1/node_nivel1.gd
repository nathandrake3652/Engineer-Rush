extends Node3D

@onready var findenivel = preload("res://selector niveles/selector_niveles.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_contador_nivel_1_timeout():
	get_tree().change_scene_to_packed(findenivel)
