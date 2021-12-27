extends Area2D

#const SPEED = 0.1
export(int) var SPEED = 200

func _process(delta):
	if Input.is_key_pressed(KEY_RIGHT): 		#get int of KEY in KeyList
		move(SPEED,0, delta)
	if Input.is_action_pressed("ui_left"):	#get string of the mapped key name
		move(-SPEED,0, delta)
	if Input.is_action_pressed("ui_up"):
		move(0,-SPEED, delta)
	if Input.is_action_pressed("ui_down"):
		move(0,SPEED, delta)
	
func move(xspeed, yspeed, delta):
	position.x += xspeed * delta
	position.y += yspeed * delta
