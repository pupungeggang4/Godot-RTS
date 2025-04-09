extends Camera2D

@onready var node_player = get_tree().current_scene.get_node('Player')

func _process(delta: float) -> void:
    position.x = node_player.position.x
    position.y = node_player.position.y
