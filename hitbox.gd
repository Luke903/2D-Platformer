extends Area2D

var Player = load("res://Player/player.tscn")


func _on_hitbox_area_entered(hitbox):
	if hitbox.name == "Player":
		Player.position == $Marker.position
