extends Control





func _on_Button_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.5), "timeout")
	var levelSelect = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/LetterSpeak.tscn")
	print("Going Back")
	
