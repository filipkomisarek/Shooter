extends CharacterBody2D

var can_laser: bool = true
var can_grenade: bool = true

func _process(_delta):
	
	# input movement
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 500
	move_and_slide()
	
	# laser shooting input
	if Input.is_action_pressed("primary action") and can_laser:
		print('shoot laser')
		can_laser = false
		$Timer.start()
		
	# grenade shooting input
	if Input.is_action_pressed("secondary action") and can_grenade:
		print('shoot grenade')
		can_grenade = false


func _on_timer_timeout():
	can_laser = true
