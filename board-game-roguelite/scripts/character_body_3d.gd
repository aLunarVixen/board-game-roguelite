extends CharacterBody3D

@onready var player_token = $"animated player token"
@onready var underneath_raycast = $RayCast3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if underneath_raycast.collide_with_areas:
		GeneralGlobal.is_on_tile = true
	
