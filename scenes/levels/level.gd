extends Node2D

func _ready():
	$Car.rotation_degrees = 90
	
func _process(delta):
	$Car.rotation_degrees += 30 * delta
	
	if $Car.rotation_degrees > 180:
		$Car.rotation_degrees = 0
	
#	print(Input.is_action_pressed("left"))
