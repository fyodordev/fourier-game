extends Node2D

export var speed = 2

#initialize with speed and length, set position of textures
func hueinit(new_speed, new_length):
	#speed is just speed
	speed *= new_speed
	
	#get position of parenths junktion
	if(get_parent().name == "Stick+Junction"):
		position[0] = get_parent().get_node("Junction").position[0]
			
	#set length
	get_node("Stick").position[0] *= new_length
	
	#set position of Junction
	get_node("Junction").position[0] = get_node("Stick").position[0] * 2
	
	#scale stick
	get_node("Stick/CollisionShape2D").scale[0] *= new_length
	get_node("Stick/Stick_Sprite").scale[0] *= new_length

func _physics_process(delta):
	# If paretn node classe == "Node" the parent is the "World" node, i.e. we don't want to get the parent's speed
	if get_parent().name == "Stick+Junction":
		rotation -= (speed - get_parent().speed) * delta
	else:
		rotation -= speed * delta
