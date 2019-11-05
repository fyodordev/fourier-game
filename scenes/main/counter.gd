extends Control

var boool=false
onready var audio_ui_up = get_tree().get_root().get_node("Node2D/ui_up_sound")
onready var audio_ui_down = get_tree().get_root().get_node("Node2D/ui_down_sound")

func is_on(boool):
	if not boool:
		get_node("number_sticks").add_color_override("font_color", Color(0.6,0.6,0.6,1))
	else:
		get_node("number_sticks").add_color_override("font_color", Color(1,1,1,1))
		
		#get_node("number_sticks/number_up").add_color_override("font_color", Color(0.6,0.6,0.6,1))


		
func _on_number_down_pressed():
	audio_ui_down.play()
	get_node("number_sticks").text=str(int(get_node("number_sticks").text)-1)
	pass
func _on_number_up_pressed():
	audio_ui_up.play()
	get_node("number_sticks").text=str(int(get_node("number_sticks").text)+1)
	pass
func _process(delta):
	is_on(boool)
	update()
