extends Control

var menu_principal_scene = load("res://menu principal/menu_principal.tscn") as PackedScene
@onready var salir = $MarginContainer/VBoxContainer/Salir as Button


func _ready():	
	salir.button_down.connect(on_salir_pressed)

func on_salir_pressed() -> void:
	Engine.time_scale = 1
	get_tree().change_scene_to_packed(menu_principal_scene)
	
