extends Node3D



# Declare member variables here. Examples:

@export var width = 10 # variance type, in this example are numeric, int or float
@export var height = 10 # @export, exposes it in godot editor (inspector)

@export var brickScene:PackedScene # premade scene, reference another scene already created

func _process(delta):
	print(delta)


# Called when the node enters the scene tree for the first time.
func _ready():	
	randomize()
	var half = width / 2
	for j in height:
		for i in width:				
			var brick = brickScene.instantiate()
			var s = 0.5			
			var pos = Vector3((i - half) * s , 1 + (j * s), 0) # calculating position
			brick.transform.origin = pos # using transform of the bring (position, rotation, scale)
			
			var newMaterial = StandardMaterial3D.new() # creating new material
			
			newMaterial.albedo_color = Color.from_hsv(randf_range(0, 1), 1, 1, 0.8) # setting random coloour
			brick.get_node("MeshInstance3D").material_override = newMaterial
			
			add_child(brick) # adds it to a scene tree
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	pass # Replace with function body.
