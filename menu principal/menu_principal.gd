class_name menu_principal
extends Control


@onready var modo_historia = $MarginContainer/HBoxContainer/VBoxContainer/Modo_historia as Button
@onready var modo_infinito = $MarginContainer/HBoxContainer/VBoxContainer/Modo_infinito as Button
@onready var salir = $MarginContainer/HBoxContainer/VBoxContainer/Salir as Button
@onready var start_level = preload("res://mundo.tscn") as PackedScene

func _ready():
	modo_infinito.button_down.connect(on_start_pressed)
	salir.button_down.connect(on_exit_pressed)

func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)

func on_exit_pressed() -> void:
	get_tree().quit()
