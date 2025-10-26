extends Node3D

@onready var animation_player = $AnimationPlayer
@onready var detection_area = $Area3D
@onready var player_detection_area = $Area3D2

var can_reset_animation = false
var can_play_animation = true
var animation_player_reset = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:	
	
	
	if detection_area.area_entered and can_play_animation:
		animation_player.play("activate")
		can_reset_animation = true
		can_play_animation = false
		animation_player_reset = true
	if !detection_area.area_entered and can_reset_animation:
		animation_player.play("RESET")
		can_reset_animation = false
		can_play_animation = true
	if player_detection_area.area_entered and animation_player_reset:
		animation_player.play("RESET")
		animation_player_reset = false
