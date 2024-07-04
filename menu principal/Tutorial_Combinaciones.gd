extends Control

@onready var menu_principal = $VBoxContainer/Button as Button
@onready var ir_menu_principal = load("res://menu principal/menu_principal.tscn") as PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	menu_principal.button_down.connect(on_mp_pressed)


func on_mp_pressed() -> void:
	get_tree().change_scene_to_packed(ir_menu_principal)
