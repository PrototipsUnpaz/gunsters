extends KinematicBody2D

var speed = 50
func _ready():
	$DeleteThis.start()
	pass

func _physics_process(delta):
	move_local_x(speed * delta)


func _on_DeleteThis_timeout():
	queue_free()
	pass 
