extends Panel

const SCORER_SERVER_URL = "https://ucn-game-server.martux.cl/scores"
const TOKEN = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIzM2M0OGIyOC02ODJkLTQ1NDctOTU5NS1jM2Q0M2IxMWM0OWQiLCJrZXkiOiJTS3lzS3pLWmxkZmpMWVJaZnFjcHVGMHZGIiwiaWF0IjoxNzE5NDYxNTMzLCJleHAiOjE3NTA5OTc1MzN9.zhZj8jC-BVD7V1INOKLztGoPv4PAc-GLpnjPsx6R5PU"
const AUTH_HEADER = "Authorization: Bearer %s" % TOKEN
@onready var http_request = $HTTPRequest
@onready var score_container = $CenterContainer/GridContainer
@onready var menu_principal = $Menu_Principal as Button
@onready var ir_menu_principal = load("res://menu principal/menu_principal.tscn") as PackedScene

func _ready():
	var label_id_title = Label.new()
	label_id_title.text = "ID"
	score_container.add_child(label_id_title)

	var label_name_title = Label.new()
	label_name_title.text = "Nombre del jugador"
	score_container.add_child(label_name_title)

	var label_score_title = Label.new()
	label_score_title.text = "Puntaje"
	score_container.add_child(label_score_title)
	
	
	http_request.request_completed.connect(_on_request_completed)
	_get_scores()
	
	menu_principal.button_down.connect(mp_pressed)
	

func _on_request_completed(result, response_code, headers, body):
	if result != OK:
		return

	var response_json = JSON.parse_string(body.get_string_from_utf8())
	for player in response_json.data:
		var label_id = Label.new()
		label_id.text = str(player.id)
		score_container.add_child(label_id)

		var label_name = Label.new()
		label_name.text = player.playerName
		score_container.add_child(label_name)

		var label_score = Label.new()
		label_score.text = str(player.score)
		score_container.add_child(label_score)
	
func _get_scores():
	var headers = [AUTH_HEADER]
	http_request.request(SCORER_SERVER_URL, headers, HTTPClient.METHOD_GET)
	

func mp_pressed():
	get_tree().change_scene_to_packed(ir_menu_principal)
