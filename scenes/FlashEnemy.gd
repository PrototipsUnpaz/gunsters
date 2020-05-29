extends Sprite
signal lifesteel
func _ready():
	pass

func mostrar_Flash():
	$FlashAnimation.play("Flash_Enemy")
	emit_signal("lifesteel")
	pass



