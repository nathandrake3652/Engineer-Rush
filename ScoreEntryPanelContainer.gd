extends Panel

const SCORER_SERVER_URL = "https://ucn-game-server.martux.cl/scores"
const TOKEN = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIzM2M0OGIyOC02ODJkLTQ1NDctOTU5NS1jM2Q0M2IxMWM0OWQiLCJrZXkiOiJTS3lzS3pLWmxkZmpMWVJaZnFjcHVGMHZGIiwiaWF0IjoxNzE5NDYxNTMzLCJleHAiOjE3NTA5OTc1MzN9.zhZj8jC-BVD7V1INOKLztGoPv4PAc-GLpnjPsx6R5PU"
const AUTH_HEADER = "Authorization: Bearer %s" % TOKEN
@onready var http_request = $HTTPRequest


@onready var player_name_input = $VBoxContainer/LineEdit
@onready var submit_button = $VBoxContainer/Button

func _ready():
	submit_button.connect("pressed", _on_submit_button_pressed)
	http_request.request_completed.connect(_on_request_completed)

func _on_submit_button_pressed():
	var player_name = player_name_input.text
	if player_name.is_empty():
		print("El nombre del jugador no puede estar vacío")
		return
	
	var data = {
		"playerName": player_name,
		"score": 100  # Aquí iria la puntuación
	}
	_register_score(data)

func _on_request_completed(result, response_code, headers, body):
	if result != OK:
		print("Error en la solicitud")
		return
	
	var json = JSON.parse_string(body.get_string_from_utf8())
	print("Respuesta:", json)

func _register_score(data: Dictionary):
	# Formato: var data = {"playerName": "", "score": 0}
	var data_json = JSON.stringify(data)
	const CONTENT_TYPE_HEADER_JSON = "Content-Type: application/json"
	var headers = [AUTH_HEADER, CONTENT_TYPE_HEADER_JSON]
	http_request.request(SCORER_SERVER_URL, headers, HTTPClient.METHOD_POST, data_json)



#func _ready():
#	http_request.request_completed.connect(_on_request_completed)
#	_get_scores()

#func _on_request_completed(result, response_code, headers, body):
#	if result != OK:
#		return
	
#	var json = JSON.parse_string(body.get_string_from_utf8())
#	print("Respuesta:", json)

#func _on_request_post_completed(result, response_code, headers, body):
#	pass
	
	
#func _get_scores():
#	var headers = [AUTH_HEADER]
#	http_request.request(SCORER_SERVER_URL, headers, HTTPClient.METHOD_GET)

#func _add_score(data: Dictionary):
	# formato: var data = {"playerName": "", "score": 0}
#	var data_json = JSON.stringify(data)
#	const CONTENT_TYPE_HEADER_JSON = "Content-Type: application/json"
#	var headers = [AUTH_HEADER, CONTENT_TYPE_HEADER_JSON]
#	http_request.request(SCORER_SERVER_URL, headers, HTTPClient.METHOD_POST, data_json)
