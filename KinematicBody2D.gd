extends KinematicBody2D

var MAX_SPEED = 230
var ACCELERATION = 50
var FRICTION = 0.2
var motion = Vector2()

var score = 0

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		motion.x = min(motion.x + ACCELERATION, MAX_SPEED)
	elif Input.is_action_pressed("ui_left"):
		motion.x =  max(motion.x - ACCELERATION, -MAX_SPEED)
	else:
		motion.x = lerp(motion.x, 0, FRICTION)
	
	if Input.is_action_pressed("ui_up"):
		motion.y =  max(motion.y - ACCELERATION, -MAX_SPEED)
	elif Input.is_action_pressed("ui_down"):
		motion.y =  min(motion.y + ACCELERATION, MAX_SPEED)
	else:
		motion.y = lerp(motion.y, 0, FRICTION)
	
	move_and_slide(motion)
	pass

func _on_Shell_0_body_entered(body):
	score += 1
	print(score)