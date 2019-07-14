extends RigidBody2D

var picked = false

func _input(event):
	if Input.is_action_just_pressed("e"):
		var bodies = $detector.get_global_transform_with_canvas()
		for b in bodies:
			if body.name = "Player" and picked == false:
				picked = true