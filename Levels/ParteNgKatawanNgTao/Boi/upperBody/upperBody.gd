extends Node2D

var selected = false
var rest_point
var rest_nodes = []

func _ready():
	rest_nodes = get_tree().get_nodes_in_group("lowerBody")
	rest_point = rest_nodes[0].global_position
	rest_nodes[0].select()

func _on_Area2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT:
			if event.pressed:
				selected = true
			elif event.button_index == BUTTON_LEFT and not event.pressed:
				selected = false
				var shortest_dist = 75
				for child in rest_nodes:
					var distance = global_position.distance_to(child.global_position)
					if distance < shortest_dist:
						child.select()
						rest_point = child.global_position
						shortest_dist = distance

func _on_Area2D_mouse_entered() -> void:
	scale = Vector2(1.08, 1.08)

func _on_Area2D_mouse_exited() -> void:
	scale = Vector2(1, 1)

func _input(event):
	if selected and event is InputEventMouseMotion:
		global_position = get_global_mouse_position()

func _physics_process(delta):
	if not selected:
		global_position = lerp(global_position, rest_point, 10 * delta)
		rotation = lerp_angle(rotation, 0, 10 * delta)
