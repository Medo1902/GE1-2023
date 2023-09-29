extends CharacterBody3D

@export var move_speed:float=5
@export var rot_speed:float=1

func _process(delta):	
		var move = Input.get_axis("move_forwards","move_backwards")
		print(move)
		
		translate(Vector3.FORWARD * move * delta * move_speed)
		
		var  turn = Input.get_axis("turn_right","turn_left")
		
		rotate(Vector3.UP, turn * rot_speed * delta)

