extends Node


var velocidad = 10
func acelerar():
	if velocidad > 30:
		velocidad = velocidad +0.5
var powerups = []


func check():
	if powerups == [1,1]:
		print('1,1')
		powerups.clear()
	if powerups == [1,2]:
		print('1,2')
		acelerar()
		powerups.clear()
	if powerups == [1,3]:
		print('1,3')
		powerups.clear()
	if powerups == [2,1]:
		print('2,1')
		powerups.clear()
	if powerups == [2,2]:
		print('2,2')
		powerups.clear()
	if powerups == [2,3]:
		print('2,3')
		powerups.clear()
	if powerups == [3,1]:
		print('3,1')
		powerups.clear()
	if powerups == [3,2]:
		print('3,2')
		powerups.clear()
	if powerups == [3,3]:
		print('3,3')
		powerups.clear()
	if powerups.size() == 3:
		print('esto no deberia pasar')
		powerups.clear()
		
