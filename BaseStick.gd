extends Node2D

export var speed = 1

func _init(new_speed, new_length):
	speed = new_speed
	get_node("Stick").position[0] *= new_length
	get_node("Junction").position[0] = get_node("Stick").position[0]
	get_node("Stick/CollisionShape2D").scale[0] *= new_length
	get_node("Stick/Stick_Sprite").scale[0] *= new_length

func _physics_process(delta):
	# If paretn node classe == "Node" the parent is the "World" node, i.e. we don't want to get the parent's speed
	if get_parent().get_class() == "Node":
		rotation -= speed * delta
	else:
		rotation -= (speed - get_parent().speed) * delta