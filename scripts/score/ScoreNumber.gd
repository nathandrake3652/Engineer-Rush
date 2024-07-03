extends Label

var score =  Variables.score

func _on_score(velocity: int):
	score += Variables.scoreup()
	print(Variables.score)
	text = "%s" % score
