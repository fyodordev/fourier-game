extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity = Vector2(0,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	if move_and_collide(velocity):
		var animP=get_tree().get_root().get_node("World/DeathFade/AnimationPlayer")
		animP.play("NewFade")
		yield(animP,"animation_finished")
		get_tree().change_scene("titlescreen.tscn")
		
