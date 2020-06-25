extends Sprite

func mostrar_flash():
	$flash.play("Flash")
	get_tree().get_nodes_in_group("sfx")[0].get_node("disparo").play()
	pass
