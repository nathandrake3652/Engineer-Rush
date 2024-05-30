extends Control

@onready var menu_principal = preload("res://menu principal/menu_principal.tscn") as PackedScene
@onready var salir = $MarginContainer/VBoxContainer/Salir as Button
@onready var continuar = $MarginContainer/VBoxContainer/Continuar as Button
func _ready():
	salir.button_down.connect(on_salir_pressed)
	#continuar.button_down.connect()

func on_salir_pressed() -> void:
	get_tree().change_scene_to_packed(menu_principal)
