extends Node3D

@onready var terrenos = preload("res://Terrenos/Terrenos.gd")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_3d_body_entered(body):
	if body.has_meta("Player"):
		print("power up")
		Variables.powerups.append(2)
		print(Variables.powerups)
		queue_free()
	


func _on_timer_timeout():
	Variables.multiplierscore = false
	Variables.multiplierspeed = false
	Variables.superjump = false
