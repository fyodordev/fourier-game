extends KinematicBody2D

export var velocity = Vector2(300,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	#if global.move:
		move_and_slide(velocity)
		
	


func _on_Finishline_body_entered(body):
	get_tree().change_scene("res://titlescreen.tscn")
	
