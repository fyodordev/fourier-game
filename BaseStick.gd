extends Node2D

export var speed = 1

func _physics_process(delta):
	# If paretn node classe == "Node" the parent is the "World" node, i.e. we don't want to get the parent's speed
	if get_parent().get_class() == "Node":
		rotation -= speed * delta
	else:
		rotation -= (speed - get_parent().speed) * delta