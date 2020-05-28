extends KinematicBody2D

func _ready():
	pass

func _process(delta):
	Autoload.Lives = 1
	$Anilivescol.frame = 1
	pass
