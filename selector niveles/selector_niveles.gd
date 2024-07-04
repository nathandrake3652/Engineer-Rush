class_name selector_niveles
extends Control

@onready var nivel1 = $Button as Button
@onready var nivel2 = $Button2 as Button
@onready var nivel3 = $Button3 as Button
@onready var nivel4 = $Button4 as Button
@onready var nivel5 = $Button5 as Button
@onready var menu_principal = $MarginContainer/HBoxContainer/VBoxContainer/Button as Button
@onready var startnivel1 = preload("res://mundo1.tscn")
@onready var startnivel2 = preload("res://mundo2.tscn")
@onready var startnivel3 = preload("res://mundo3.tscn")
@onready var startnivel4 = preload("res://mundo4.tscn")
@onready var startnivel5 = preload("res://mundo5.tscn")
@onready var ir_menu_principal = load("res://menu principal/menu_principal.tscn") as PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	nivel1.position = Vector2(95, 374)
	nivel2.position = Vector2(261, 70)
	nivel3.position = Vector2(462, 378)
	nivel4.position = Vector2(698, 84)
	nivel5.position = Vector2(903, 392)
	nivel1.button_down.connect(nivel1start)
	nivel2.button_down.connect(nivel2start)
	nivel3.button_down.connect(nivel3start)
	nivel4.button_down.connect(nivel4start)
	nivel5.button_down.connect(nivel5start)
func nivel1start():
	get_tree().change_scene_to_packed(startnivel1)
func nivel2start():
	get_tree().change_scene_to_packed(startnivel2)
func nivel3start():
	get_tree().change_scene_to_packed(startnivel3)
func nivel4start():
	get_tree().change_scene_to_packed(startnivel4)
func nivel5start():
	get_tree().change_scene_to_packed(startnivel5)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):


