extends Node

var multiplierscore = false
var multiplierspeed = false
var shield = false
var velocidad = 10
var limite = 30
var superjump = false
func acelerar():
	if velocidad > limite:
		velocidad = velocidad +0.5
var powerups = []
var score = 1
func scoreup():
	if multiplierscore == true:
		score += velocidad*2
	else:
		score += velocidad
		print(score)
	return score
	

func check():
	if powerups == [1,1]:
		score = score + 50
		powerups.clear()
	if powerups == [1,2]:
		limite = limite  +5
		acelerar()
		powerups.clear()
	if powerups == [1,3]:
		limite = limite -5
		powerups.clear()
	if powerups == [2,1]:
		multiplierscore = true
		powerups.clear()
	if powerups == [2,2]:
		score = score + 50
		powerups.clear()
	if powerups == [2,3]:
		shield = true
		powerups.clear()
	if powerups == [3,1]:
		multiplierspeed = true
		powerups.clear()
	if powerups == [3,2]:
		superjump = true
		powerups.clear()
	if powerups == [3,3]:
		score = score + 50
		powerups.clear()
	if powerups.size() == 3:
		score = score + 100
		powerups.clear()
		
