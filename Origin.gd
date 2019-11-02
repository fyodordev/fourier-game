extends Node2D

var x = 3

func _process(delta):
	rotation -= x * delta
