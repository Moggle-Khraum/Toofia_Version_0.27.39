extends Popup

func _on_levels_pressed() -> void:
	MenuClickSfxPlayer.play()
	var pag = get_tree().change_scene('res://Levels/Fruits&Vegs/Fruits&VegsMain.tscn')
	#This will go to level selection
	print("To Levels")

func _on_home_pressed() -> void:
	#This will go straight to the main menu
	MenuClickSfxPlayer.play()
	var toMainMenu = get_tree().change_scene("res://Scenes/MainMenu.tscn")
	print("To Home")
	MainMenuThemePlayer.stop()
	print("MainMenuPlayer Stop")
	

func _on_topics_pressed():
	MenuClickSfxPlayer.play()
	var toMenuChoices = get_tree().change_scene("res://Scenes/MenuChoices.tscn")
	print("To Home")

func _on_x_pressed() -> void:
	MenuClickSfxPlayer.play()
	$'.'.hide()
	print("Hides the Popup")
