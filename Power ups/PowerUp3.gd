extends Node3D

@onready var terrenos = preload("res://Terrenos/Terrenos.gd")
@onready var findenivel = preload("res://selector niveles/selector_niveles.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_3d_body_entered(body):
	if body.has_meta("Player"):
		print("power up")
		Variables.powerups.append(3)
		print(Variables.powerups)
		Variables.acelerar()
		queue_free()
	


