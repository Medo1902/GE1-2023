extends MeshInstance3D

var time_acc = 0
var height = position.y
var gravity:Vector3 = 9.8
var velocity:Vector3
# Called when the node enters the scene tree for the first time.
func _ready():
	var t = sqrt(height / (gravity.y * 0.5))
	var s = t*gravity.y
	print("Predicted time: " + str(t))
	print("Predicted speed: " + str(s))
	
	pass # Replace with function body.

func _physics_process(delta):
	if position.y > 0:
		velocity = v + gravity * delta
		position = position + velocity * delta
		time_acc += delta
	else:
		print("time taken: " + time_acc)
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
