extends Camera2D

export var speed = 50.0
#onready var AnchorCam = get_tree().get_root().get_node("World/Anchor")
onready var AnchorCam = get_node("/root/World/Anchor")

func _process(delta):
    if is_current():
        var inpx = (int(Input.is_action_pressed("ui_cameraright")) - int(Input.is_action_pressed("ui_cameraleft")))
        position.x = position.x + inpx * speed
        if position.x < 0:
            position.x = 0
    else:
        # Set position to other camera's position if not current. Somehow slightly off but not too bad
        # because the zoom level is different so the used doesn't really notice. Dunno why it's off though.
        position = AnchorCam.position