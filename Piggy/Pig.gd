extends Area2D

#const SPEED = 0.1
export(int) var SPEED = 200
var moving:bool = false

onready var animPlayer = $AnimationPlayer
onready var sprite = $PigSprite

func _process(delta):
	moving = false
	if Input.is_key_pressed(KEY_RIGHT): 		#get int of KEY in KeyList
		sprite.flip_h = false
		move(SPEED,0, delta)
	if Input.is_action_pressed("ui_left"):	#get string of the mapped key name
		sprite.flip_h = true
		move(-SPEED,0, delta)
	if Input.is_action_pressed("ui_up"):
		move(0,-SPEED, delta)
	if Input.is_action_pressed("ui_down"):
		move(0,SPEED, delta)
		
	if moving == true:
		animPlayer.play("Run")
	else:
		animPlayer.play("Idle")
	
func move(xspeed, yspeed, delta):
	moving = true
	position.x += xspeed * delta
	position.y += yspeed * delta
	
