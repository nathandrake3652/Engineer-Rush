class_name menu_principal
extends Control


@onready var modo_historia = $MarginContainer/HBoxContainer/VBoxContainer/Modo_historia as Button
@onready var modo_infinito = $MarginContainer/HBoxContainer/VBoxContainer/Modo_infinito as Button
@onready var tabla_puntajes = $MarginContainer/HBoxContainer/VBoxContainer/Tabla_puntaje as Button

@onready var salir = $MarginContainer/HBoxContainer/VBoxContainer/Salir as Button
@onready var start_level = preload("res://mundo.tscn") as PackedScene
@onready var combinaciones = preload("res://menu principal/Tutorial_Combinaciones.tscn")
@onready var ir_tabla_puntajes = load("res://ScorePanel.tscn") as PackedScene
@onready var selector = preload("res://selector niveles/selector_niveles.tscn") as PackedScene
func _ready():
	modo_infinito.button_down.connect(on_start_pressed)
	salir.button_down.connect(on_exit_pressed)
	tabla_puntajes.button_down.connect(tp_pressed)
	modo_historia.button_down.connect(selector_niveles)
func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)

func on_exit_pressed() -> void:
	get_tree().quit()

func tp_pressed() -> void:
	get_tree().change_scene_to_packed(ir_tabla_puntajes)
	
func _on_button_pressed():
	get_tree().change_scene_to_packed(combinaciones)
func selector_niveles() -> void:
	get_tree().change_scene_to_packed(selector)

