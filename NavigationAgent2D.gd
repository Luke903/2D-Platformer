extends CharacterBody2D

var player = null
@onready var ray = $See
@export var speed = 800
@export var looking_speed = 100
var nav_ready = false

var mode = ""


var points = []
const margin = 1.5

func _ready():
	$AnimatedSprite2D.play("Moving")
	call_deferred("nav_setup")

func nav_setup():
	# Wait for the first physics frame so the NavigationServer can sync.
	await get_tree().physics_frame
	$NavigationAgent2D.target_position = global_position
	nav_ready = true
