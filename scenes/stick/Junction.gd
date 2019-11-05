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
		get_node("Junction_Sprite").set_texture(null) #after collision has been detected remove sprite of last junction
		get_node("Explosion/Particles2D").emitting=true #initate "explosion" when collisoin has been detected
		var animP=get_tree().get_root().get_node("World/DeathFade/AnimationPlayer")
		animP.play("NewFade")
		yield(animP,"animation_finished")
		get_tree().change_scene("res://scenes/start_screen/titlescreen.tscn")
		
