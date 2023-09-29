extends Node3D

@export var theta = 4
@export var radius = 2
@export var brickScene:PackedScene


# Called when the node enters the scene tree for the first time.
func _ready():
		var brick = brickScene.instantiate()
		var pos = Vector3(radius * cos(theta), radius * sin(theta),0)
		brick.transform.origin = pos
		
		add_child(brick)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
