extends Node3D

@export var angle = deg_to_rad(0)
var numOfCircles = 9
@export var radius = 0.7
@export var brickScene:PackedScene


# Called when the node enters the scene tree for the first time.
func _ready():
	var numOfBricks = 6
	var next_angle = 2 * PI / numOfBricks
	var angle = deg_to_rad(0)
	for j in numOfCircles:
		for i in numOfBricks:
			var brick = brickScene.instantiate()
			var pos = Vector3(radius * cos(angle), radius * sin(angle),0)
			brick.transform.origin = pos
			
			var newMaterial = StandardMaterial3D.new()
			
			newMaterial.albedo_color = Color.from_hsv(randf_range(0, 1), 1, 1, 0.8)
			brick.get_node("MeshInstance3D").material_override = newMaterial
			
			angle += next_angle
			
			add_child(brick)
		radius += 0.75
		numOfBricks += 6
		next_angle = 2 * PI / numOfBricks
			


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var newMaterial = StandardMaterial3D.new()
	newMaterial.albedo_color = Color.from_hsv(randf_range(0, 1), 1, 1, 0.8)
