extends Area2D

const SPEED = 0.1
func _process(delta):
	if Input.is_key_pressed(KEY_RIGHT): 		#get int of KEY in KeyList
		move(SPEED,0)
	if Input.is_action_pressed("ui_left"):	#get string of the mapped key name
		move(-SPEED,0)
	if Input.is_action_pressed("ui_up"):
		move(0,-SPEED)
	if Input.is_action_pressed("ui_down"):
		move(0,SPEED)
	
func move(xspeed, yspeed):
	position.x += xspeed
	position.y += yspeed
