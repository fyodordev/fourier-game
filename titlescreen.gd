extends Control

func _on_number_down_pressed():
	print(int(get_node("Label/number_sticks").text))
	if get_node("Label/number_sticks").text!="1":
		get_node("Vel/Node2D%s"%get_node("Label/number_sticks").text).boool=false
		get_node("Siz/Node2D%s"%get_node("Label/number_sticks").text).boool=false
		get_node("Label/number_sticks").text=str(int(get_node("Label/number_sticks").text)-1)
		
	print("YESS BABY")
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
	var number_of_sticks=int(get_node("Label/number_sticks").text)
	var sizes = []
	var speeds =[]
	for i in range(number_of_sticks):
		i=i+1
		sizes.append(int(get_node("Siz/Node2D%s/number_sticks"%i).text))
		speeds.append(int(get_node("Vel/Node2D%s/number_sticks"%i).text))
	print(sizes,speeds)
	get_tree().change_scene("res://World.tscn")
	

