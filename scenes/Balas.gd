extends KinematicBody2D

func _process(delta):
	if Autoload.prueba == false and Autoload.Charge >= 6:
		$Bullets.frame = 6 
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 4 and Autoload.Charge <= 5: 
		$Bullets.frame = 5
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 3 and Autoload.Charge <= 4: 
		$Bullets.frame = 4
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 2 and Autoload.Charge <= 3: 
		$Bullets.frame = 3
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 1 and Autoload.Charge <= 2: 
		$Bullets.frame = 2
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 0 and Autoload.Charge <= 1: 
		$Bullets.frame = 1
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= -1 and Autoload.Charge <= 0: 
		$Bullets.frame = 0
	
	pass
