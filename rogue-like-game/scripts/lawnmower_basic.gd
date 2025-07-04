extends CharacterBody2D

var SPEED = 100
var player_chase = false 
var player = null



func _on_detectionarea_body_entered(body: Node2D) -> void:
	player = body
	player_chase = true 

func _on_detectionarea_body_exited(body: Node2D) -> void:
	player = null
	player_chase = false
	
func _physics_process(delta: float) -> void:
	if player_chase:
		position += ((player.position - position)/(player.position.distance_to(position)))*delta*SPEED
		
		
		
		if(player.position.x - position.x) <0:
			$AnimatedSprite2D.flip_h = false
		else:
			$AnimatedSprite2D.flip_h = true
	else:
		pass
	

		
	
