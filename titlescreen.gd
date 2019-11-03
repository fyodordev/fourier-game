extends Control
"""
func _init():
	get_node("Label/number_sticks").text=str(global.number_of_sticks)
	for i in range(global.number_of_sticks):
		i=i+1
		get_node("Vel/Node2D%s"%i).text=global.speeds[i]
		get_node("Siz/Node2D%s"%i).text=global.lengths[i]
"""
func _on_number_down_pressed():
	print(int(get_node("Label/number_sticks").text))
	if get_node("Label/number_sticks").text!="1":
		get_node("Vel/Node2D%s"%get_node("Label/number_sticks").text).boool=false
		get_node("Siz/Node2D%s"%get_node("Label/number_sticks").text).boool=false
		get_node("Label/number_sticks").text=str(int(get_node("Label/number_sticks").text)-1)
	pass
func _on_number_up_pressed():
	print(int(get_node("Label/number_sticks").text))
	if get_node("Label/number_sticks").text!="4":
		get_node("Label/number_sticks").text=str(int(get_node("Label/number_sticks").text)+1)
		get_node("Vel/Node2D%s"%get_node("Label/number_sticks").text).boool=true
		get_node("Siz/Node2D%s"%get_node("Label/number_sticks").text).boool=true
	print("YESS BABY")
	pass
	
func _physics_process(delta):
	#var placeholder="Node2D%s"
	get_node("Vel/Node2D1").boool=true
	get_node("Siz/Node2D1").boool=true
	get_node("Sprite/AnimationPlayer").play("grass")
	pass

func _on_StartGameSprite_pressed():
	global.number_of_sticks=int(get_node("Label/number_sticks").text)
	global.lengths = []
	global.speeds = []
	for i in range(global.number_of_sticks):
		i=i+1
		global.lengths.append(int(get_node("Siz/Node2D%s/number_sticks"%i).text))
		global.speeds.append(int(get_node("Vel/Node2D%s/number_sticks"%i).text))
	#global.move=true
	get_tree().change_scene("res://World.tscn")
	

