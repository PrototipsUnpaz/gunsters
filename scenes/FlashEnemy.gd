extends Sprite
signal lifesteel
func _ready():
	pass

func mostrar_Flash():
	$FlashAnimation.play("Flash_Enemy")
	get_tree().get_nodes_in_group("sfx")[0].get_node("dano").play()
	emit_signal("lifesteel")
	
	pass



