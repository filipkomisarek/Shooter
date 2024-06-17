extends CharacterBody2D

func _process(delta):
	
	# input movement
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 500
	move_and_slide()
	
	# laser shooting input
	if Input.is_action_pressed("primary action"):
		print('shoot laser')
		
	# grenade shooting input
	if Input.is_action_pressed("secondary action"):
		print('shoot grenade')
