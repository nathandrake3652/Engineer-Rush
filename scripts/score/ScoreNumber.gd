extends Label

var score = 0

func _on_score(velocity: int):
	score += velocity
	text = "%s" % score
