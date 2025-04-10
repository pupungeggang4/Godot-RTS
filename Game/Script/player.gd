extends Node2D

@onready var node_pointer = get_tree().current_scene.get_node('Pointer')
@export var speed = 200.0

func _process(delta: float) -> void:
    move_player(delta)
    handle_input()
    
func move_player(delta: float) -> void:
    var diff = node_pointer.position - position
    if diff.length() > 10:
        position += diff.normalized() * speed * delta
    
func handle_input() -> void:
    if Input.is_action_just_released('r_click'):
        var mouse = get_global_mouse_position()
        node_pointer.position = mouse
