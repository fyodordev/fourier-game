extends Node


# build the tree with numSticks sticks, instanciate sticks with speeds and lengths
func _ready():
	var currNode = get_node("./Anchor")
	for i in range(global.number_of_sticks):
		#prepare stick
		var scene = load("BaseStick.tscn")
		var instancedScene = scene.instance()
		
		#attach new stick
		currNode.add_child(instancedScene)
		
		#get the node we just attached, set speeds and lengths
		currNode = currNode.get_node("./Stick+Junction")
		currNode.hueinit(global.speeds[i],global.lengths[i])
	
	currNode.get_node("Junction").get_node("CollisionShape2D").set_disabled(false)


