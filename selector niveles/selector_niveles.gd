class_name selector_niveles
extends Control

@onready var nivel1 = $Button as Button
@onready var nivel2 = $Button2 as Button
@onready var nivel3 = $Button3 as Button
@onready var nivel4 = $Button4 as Button
@onready var nivel5 = $Button5 as Button
@onready var menu_principal = $MarginContainer/HBoxContainer/VBoxContainer/Button as Button

# Called when the node enters the scene tree for the first time.
func _ready():
	nivel1.position = Vector2(95, 374)
	nivel2.position = Vector2(261, 70)
	nivel3.position = Vector2(462, 378)
	nivel4.position = Vector2(698, 84)
	nivel5.position = Vector2(903, 392)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	pass
