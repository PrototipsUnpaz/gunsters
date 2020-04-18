extends KinematicBody2D
var Velocity = Vector2 (0,0)
func _process(delta):
	 look_at_mouse()
		
func look_at_mouse():
	if get_global_mouse_position().x > 300:
		Velocity.x = 0
		$Sprite.flip_h = true
	#if get_global_mouse_position().y > 300:
		#Velocity.y = 200
	if get_global_mouse_position().x <= 300:
		Velocity.x = 0
		$Sprite.flip_h = false
	#if get_global_mouse_position().y <= 300:
		#Velocity.y =-200
	move_and_slide(Velocity)
	pass
