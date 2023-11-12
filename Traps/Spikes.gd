extends Area2D




var Player = load("res://Player/player.tscn")



func _on_body_entered(body):
	$AnimatedSprite2D.play ("Spike") 
	if body.name == "Player":
		"res://Player/player.tscn"


