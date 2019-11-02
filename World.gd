extends Node


#just some test values, number of sticks, speeds and lengths of sticks
export var numSticks = 4
export var speeds = [1,2,6,-3]
export var lengths = [2,-1,1,3]

# build the tree with numSticks sticks, instanciate sticks with speeds and lengths
func _ready():
	var currNode = get_node("./Anchor")
	for i in range(numSticks):
		#prepare stick
		var scene = load("BaseStick.tscn")
		var instancedScene = scene.instance()
		
		#attach new stick
		currNode.add_child(instancedScene)
		
		#get the node we just attached, set speeds and lengths
		currNode = currNode.get_node("./Stick+Junction")
		currNode.hueinit(speeds[i],lengths[i])
		


