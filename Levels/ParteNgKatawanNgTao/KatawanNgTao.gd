extends Control

#signal pressed


func _on_GoBackButton_pressed() -> void:
	print("Presses Go Back")
	MenuClickSfxPlayer.play()
	var toMenu = get_tree().change_scene("res://Scenes/MenuChoices.tscn")
	print("Going to Topic Selector")
	


func _on_pickBoi_pressed() -> void:
	print("You have selected 'BOI' ")
	MenuClickSfxPlayer.play()
	var toBOI = get_tree().change_scene("res://Levels/ParteNgKatawanNgTao/Boi/SelectedBoi.tscn")
	print("Going to Selected BOI")


func _on_pickGurl_pressed() -> void:
	print("You have selected 'GURL' ")
	MenuClickSfxPlayer.play()
	var toGURL = get_tree().change_scene("res://Levels/ParteNgKatawanNgTao/Gurl/SelectedGurl.tscn")
	print("Going to Selected GURL")
