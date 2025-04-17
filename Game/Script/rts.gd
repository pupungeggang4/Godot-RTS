extends Node2D

@onready var node_unit = get_node('Field/Unit')

func _ready() -> void:
    var node_unit_temp = load('res://Scene/Thing/unit.tscn').instantiate()
    node_unit_temp.position = Vector2(-800, 0)
    node_unit_temp.get_node('Sprite').texture = load('res://Image/Unit/Base1.png')
    node_unit.add_child(node_unit_temp)
    node_unit_temp = load('res://Scene/Thing/unit.tscn').instantiate()
    node_unit_temp.position = Vector2(800, 0)
    node_unit_temp.get_node('Sprite').texture = load('res://Image/Unit/Base2.png')
    node_unit.add_child(node_unit_temp)
    
func _process(delta: float) -> void:
    pass
