extends Node2D

var speed = 2

func _process(delta):
	rotation -= (speed - get_parent().speed) * delta