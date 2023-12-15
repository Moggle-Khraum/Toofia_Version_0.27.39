extends Control


func _on_goBack_pressed() -> void:
	var home = get_tree().change_scene("res://Scenes/MenuChoices.tscn")
	print("Home")
	$'%bodypartsTheme'.stream_paused = true

	
func _on_goFlashcards_pressed() -> void:
	var fc = get_tree().change_scene("res://Levels/BodyParts/Flashcards/HeadMain.tscn")
	print("Flashcards")
	$'%bodypartsTheme'.stream_paused = true

func _on_organs_pressed() -> void:
	print("Organs")
	


func _on_Control_visibility_changed() -> void:
	$'%bodypartsTheme'.play()
	

