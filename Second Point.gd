extends Node2D

var x = 5

func _process(delta):
	rotation -= (x - get_parent().x) * delta