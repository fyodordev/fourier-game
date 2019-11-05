extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity = Vector2(0,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	#collison behaviour
	if move_and_collide(velocity):
		
		# make last junction's movement independant from parent 
		global_position #I think this line transforms position coordinates from relative to the global coordinate system (without it the next line puts the junction back near to the origin, probably because its coordinates would be relative to the parent)
		set_as_toplevel(true) #removes parent node transformational dependence
		
		#animation
		get_node("Junction_Sprite").set_texture(null) #after collision has been detected remove sprite of last junction
		get_node("Explosion/Particles2D").set_as_toplevel(true)#necessary that coordinatesystem for particle effects like gravity refers to the global coordinatesystem
		get_node("Explosion/Particles2D").global_position=global_position #necessary that coordinatesystem for particle effects like gravity refers to the global coordinatesystem
		get_node("Explosion/Particles2D").emitting=true #initate "explosion" when collisoin has been detected
		
		#deathscreen
		var animP=get_tree().get_root().get_node("World/DeathFade/AnimationPlayer")
		animP.play("NewFade")
		yield(animP,"animation_finished")
		get_tree().change_scene("res://scenes/start_screen/titlescreen.tscn")
		
