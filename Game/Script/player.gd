extends Node2D

@onready var node_pointer = get_tree().current_scene.get_node('Pointer')
@onready var node_camera = get_tree().current_scene.get_node('Camera')
@export var side = 0
@export var speed = 200.0
@export var hp = 60

func _process(delta: float) -> void:
    move_player(delta)
    adjust_camera()
    handle_input()
    
func adjust_camera() -> void:
    node_camera.position.x = position.x
    node_camera.position.y = position.y
    
func move_player(delta: float) -> void:
    var diff = node_pointer.position - position
    if diff.length() > 10:
        position += diff.normalized() * speed * delta
    
func handle_input() -> void:
    if Input.is_action_just_released('r_click'):
        var mouse = get_global_mouse_position()
        node_pointer.position = mouse
