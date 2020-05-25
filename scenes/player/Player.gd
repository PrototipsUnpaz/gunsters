extends KinematicBody2D
var Velocity = Vector2 (0,0)
var PosPistol = 0
func _ready():
	pass
func _on_Buttom_pressed():
	PosPistol = 0
	Autoload.Charge = 6
	
	pass 
func _process(delta):
	$Pistolani.frame = PosPistol
	if Input.is_action_just_released("Touch") and Autoload.Charge >= 1:
		Get_Direction()
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 1:
		if get_global_mouse_position().x > 466 and get_global_mouse_position().y < 500:
			PosPistol = 1
			Autoload.Charge -= 1
			get_tree().call_group("Flash", "mostrar_flash")
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 1:
		if get_global_mouse_position().x < 233 and get_global_mouse_position().y < 500:
			$Pistolani.flip_h = false
			PosPistol = 1
			Autoload.Charge -= 1
		get_tree().call_group("Flash", "mostrar_flash")
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 1:
		if get_global_mouse_position().x < 233 and get_global_mouse_position().y > 500:
			$Pistolani.flip_h = false
			PosPistol = 3
			Autoload.Charge -= 1
			get_tree().call_group("Flash", "mostrar_flash")
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 1:
		if get_global_mouse_position().x > 466 and get_global_mouse_position().y > 500:
			$Pistolani.flip_h = true
			PosPistol = 3	
			Autoload.Charge -= 1
			get_tree().call_group("Flash", "mostrar_flash")
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 1:
		if get_global_mouse_position().x > 234 and get_global_mouse_position().x < 465:
			PosPistol = 5
			Autoload.Charge -= 1
			get_tree().call_group("Flash", "mostrar_flash")
	pass
	
func Get_Direction():
	if get_global_mouse_position().x > 466 and get_global_mouse_position().y < 500:
		$Pistolani.flip_h = true
		PosPistol = 0
	if get_global_mouse_position().x < 233 and get_global_mouse_position().y < 500:
		$Pistolani.flip_h = false
		PosPistol = 0
	if get_global_mouse_position().x < 233 and get_global_mouse_position().y > 500:
		$Pistolani.flip_h = false
		PosPistol = 2
	if get_global_mouse_position().x > 466 and get_global_mouse_position().y > 500:
		$Pistolani.flip_h = true
		PosPistol = 2
	if get_global_mouse_position().x > 234 and get_global_mouse_position().x < 465:
		PosPistol = 4
	print (get_global_mouse_position())
	pass



