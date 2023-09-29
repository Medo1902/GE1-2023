var count = 10
var radius = 100.0
var center = Vector2(x, y)

# Get how much of an angle objects will be spaced around the circle.
# Angles are in radians so 2.0*PI = 360 degrees
var angle_step = 2.0*PI / count

var angle = 0
# For each node to spawn
for i in range(0, count):

	var direction = Vector2(cos(angle), sin(angle))
	var pos = center + direction * radius

	var node = scene_res.instance()
	node.set_pos(pos)
	parent.add_child(node)

	# Rotate one step
	angle += angle_step
