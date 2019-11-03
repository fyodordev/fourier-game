extends Line2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var point
var target
export(NodePath) var targetPath

# Called when the node enters the scene tree for the first time.
func _ready():
	target = get_node(targetPath)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _process(delta):
	global_position = Vector2(0,0)
	global_rotation = 0
	point = target.global_position
	add_point(point)
	pass
