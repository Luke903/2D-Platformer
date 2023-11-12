extends CharacterBody2D

const speed = 80
const JUMP_Velocity = -250
var player_chase = false
var player = null
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")



func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
		$AnimatedSprite2D.play ("Fall")
	if player_chase:
		position += (player.position - position)/speed
		
		$AnimatedSprite2D.play("Moving")
		
		if(player.position.x - position.x) < 0:
			$AnimatedSprite2D.flip_h = true
		else:
			$AnimatedSprite2D.flip_h = false
	else:
		$AnimatedSprite2D.play("Idle")





	move_and_slide()

func _on_detection_area_body_entered(body):
	player = body
	player_chase = true



func _on_detection_area_body_exited(body):
	player = null
	player_chase = false 





