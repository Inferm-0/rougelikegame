extends CharacterBody2D


const SPEED = 175.0


	
func  get_input():
	var input_direction = Input.get_vector("move left","move right","move up","move down")
	velocity = input_direction * SPEED
func _physics_process(delta):
	get_input()
	move_and_slide()
	
