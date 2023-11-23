extends Control


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_TextureRect_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.pressed:
		var drag_data = {"node": self}
		var drag_preview = TextureRect.new()
		drag_preview.rect_size = Vector2(50, 50)
		drag_preview.modulate = Color(1, 1, 1, 0.5)
		drag_preview.set_drag_preview(drag_data)
		get_tree().set_drag_icon(drag_preview)
	
	
	
	
	pass # Replace with function body.
