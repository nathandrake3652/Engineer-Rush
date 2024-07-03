class_name menu_muerte
extends Control


@onready var menu_principal = $TextureRect/MarginContainer/HBoxContainer/VBoxContainer/Button as Button
@onready var ir_menu_principal = load("res://menu principal/menu_principal.tscn") as PackedScene

func _ready():
	menu_principal.button_down.connect(on_mp_pressed)

func on_mp_pressed() -> void:
	get_tree().change_scene_to_packed(ir_menu_principal)
