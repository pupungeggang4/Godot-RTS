extends Control

@onready var node_text_hp = get_node('TextHP')
@onready var node_player = get_tree().current_scene.get_node('Player')

func _process(delta: float) -> void:
    node_text_hp.text = str(node_player.hp)
