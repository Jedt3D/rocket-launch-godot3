extends Node

onready var animationPlayer = $AnimationPlayer

#func _ready():
#	animationPlayer.play("ยิงจรวด")
#

func _on_LaunchButton_pressed():
	print("เริ่มยิงงงงงงง")
	animationPlayer.play("ยิงจรวด")
