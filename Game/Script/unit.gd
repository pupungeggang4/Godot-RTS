extends Node2D

@export var side = 0
@export var hp = 30

func _ready() -> void:
    pass
    
func set_texture() -> void:
    pass
    
func _process(delta: float) -> void:
    handle_death()
    
func handle_death() -> void:
    if hp <= 0:
        queue_free()
