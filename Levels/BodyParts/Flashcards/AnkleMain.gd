extends Control



func _ready() -> void:
	print("This Is ANKEL")

func _on_ButtonLeft_pressed() -> void:
	# Update the Tween node for transitioning to the left
	$'%AnimLeft'.play('animPick')
	print("Pressed Left")
	
func _on_goBack_pressed() -> void:
	var home = get_tree().change_scene("res://Levels/BodyParts/BodyParts.tscn")

func _on_AnimLeft_animation_finished(_anim_name: String) -> void:
	var left = get_tree().change_scene("res://Levels/BodyParts/Flashcards/FootMain.tscn")
	print("Changes Scene to FOOT")



func _on_Button_pressed() -> void:
	pass # Replace with function body.


func _on_part_finished() -> void:
	pass # Replace with function body.
