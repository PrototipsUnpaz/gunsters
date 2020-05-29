extends KinematicBody2D
var Velocity = Vector2 (0,0)
var posPistol = 0


func _ready():
	
	pass

func _process(delta): 
	if Autoload.prueba == false:
		_shooting()

	print(Autoload.Charge)
	pass
	
func _shooting():
	$Pistolani.frame = posPistol
	if Input.is_action_just_released("Touch") and Autoload.Charge >= 1:
		Get_Direction()
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 1:
		if get_global_mouse_position().x > 466 and get_global_mouse_position().y < 500:
			posPistol = 1
			Autoload.Charge -= 1
			get_tree().call_group("Flash", "mostrar_flash")
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 1:
		if get_global_mouse_position().x < 233 and get_global_mouse_position().y < 500:
			$Pistolani.flip_h = false
			posPistol = 1
			Autoload.Charge -= 1
		get_tree().call_group("Flash", "mostrar_flash")
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 1:
		if get_global_mouse_position().x < 233 and get_global_mouse_position().y > 500:
			$Pistolani.flip_h = false
			posPistol = 3
			Autoload.Charge -= 1
			get_tree().call_group("Flash", "mostrar_flash")
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 1:
		if get_global_mouse_position().x > 466 and get_global_mouse_position().y > 500:
			$Pistolani.flip_h = true
			posPistol = 3
			Autoload.Charge -= 1
			get_tree().call_group("Flash", "mostrar_flash")
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 1:
		if get_global_mouse_position().x > 234 and get_global_mouse_position().x < 465:
			posPistol = 5
			Autoload.Charge -= 1
			get_tree().call_group("Flash", "mostrar_flash")
			pass
func Get_Direction():
	if get_global_mouse_position().x > 466 and get_global_mouse_position().y < 500:
		$Pistolani.flip_h = true
		posPistol = 0
	if get_global_mouse_position().x < 233 and get_global_mouse_position().y < 500:
		$Pistolani.flip_h = false
		posPistol = 0
	if get_global_mouse_position().x < 233 and get_global_mouse_position().y > 500:
		$Pistolani.flip_h = false
		posPistol = 2
	if get_global_mouse_position().x > 466 and get_global_mouse_position().y > 500:
		$Pistolani.flip_h = true
		posPistol = 2
	if get_global_mouse_position().x > 234 and get_global_mouse_position().x < 465:
		posPistol = 4
	print (get_global_mouse_position())

	pass












