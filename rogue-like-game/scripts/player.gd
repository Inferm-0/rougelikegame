extends CharacterBody2D


const SPEED = 175.0
var down = Vector2(0.0 ,1.0)
var up = Vector2(0.0 ,-1.0)

	
func  get_input():
	var input_direction = Input.get_vector("move left","move right","move up","move down")
	velocity = input_direction * SPEED

func animation_direction():
	var direction = "down"
	if velocity.y < 0: direction = "up"
	
	elif velocity.y > 0: direction = "down"
	
	if velocity.y>0 or velocity.y<0 or velocity.x >0 or velocity.x <0:
		$AnimatedSprite2D.play("move_" + direction)
	elif velocity.y == 0:
		$AnimatedSprite2D.play("idle_" + direction)
	
	
	
	
func _physics_process(delta):
	get_input()
	move_and_slide()
	animation_direction()
	
	
	
	
