extends CharacterBody3D

const SPEED = 60.0
const JUMP_VELOCITY = 5
const MAX_VELOCITY_X = 20.0
const DISTANCE_POSITION = 3.5
const CENTER_POSITION = 0.5
const LEFT_POSITION = DISTANCE_POSITION + 0.5
const RIGHT_POSITION = -DISTANCE_POSITION 
const FORWARD_SPEED = 10.0
var player_position_x = CENTER_POSITION


var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

func _physics_process(delta):
	if not is_on_floor():
		velocity.y -= gravity * delta

	if is_on_floor() and Input.is_action_just_pressed("ui_accept"):
		$AnimationPlayer.play("jump")
		velocity.y = JUMP_VELOCITY
	elif is_on_floor():
		$AnimationPlayer.play("standard_run")

	if player_position_x == LEFT_POSITION \
		and Input.is_action_just_pressed("ui_right"):
			player_position_x = CENTER_POSITION
	elif player_position_x == RIGHT_POSITION \
		and Input.is_action_just_pressed("ui_left"):
			player_position_x = CENTER_POSITION
	elif Input.is_action_just_pressed("ui_left"):
		player_position_x = LEFT_POSITION
	elif Input.is_action_just_pressed("ui_right"):
		player_position_x = RIGHT_POSITION

	
	position.x = move_toward(position.x, player_position_x, SPEED * delta)
	move_and_slide()

func _on_area_3d_body_entered(body):
	if body.has_meta("Gameover"):
		pass
		#get_tree().quit()
