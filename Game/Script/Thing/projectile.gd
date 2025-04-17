extends Node2D

@export var side = 0

func _ready() -> void:
    pass
    
func _process(delta: float) -> void:
    pass

func _on_area_2d_area_entered(area: Area2D) -> void:
    if area.get_parent().side != side:
        area.get_parent().hp -= 5
        queue_free()
