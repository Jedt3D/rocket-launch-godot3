extends Area2D

#const SPEED = 0.1
export(int) var SPEED = 200
var moving:bool = false
var score:int = 0

onready var animPlayer = $AnimationPlayer
onready var sprite = $PigSprite
onready var score_text = $"../Score/CurrentScore"

func _process(delta):
	moving = false
	score_text.text = str(score)
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
		
	# you can detect collission here with get_overlapping_areas()
	# OR use the _area_entered signal function 
	#	var areas = get_overlapping_areas()
	#	for area in areas:
	#		area.queue_free()
	
func move(xspeed, yspeed, delta):
	moving = true
	position.x += xspeed * delta
	position.y += yspeed * delta
	


func _on_Piggy_area_entered(area):
	area.queue_free()
	score += 1
	score_text.text = str(score)
	self.scale *= 1.15	# eat more apple to grow up!
