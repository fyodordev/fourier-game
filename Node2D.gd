extends Node2D

export var speed = 1

func _process(delta):
	rotation -= (speed - get_parent().speed) * delta