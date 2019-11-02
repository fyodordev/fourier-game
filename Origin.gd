extends Node2D

var speed = 3

func _process(delta):
	rotation -= speed * delta
