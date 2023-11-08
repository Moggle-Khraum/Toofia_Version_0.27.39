extends Panel


func _on_levels_pressed() -> void:
	$'%PrutasAtGulay'.show()
	print('Go to Level Selection')
	
func _on_home_pressed() -> void:
	var home = get_tree().change_scene("res://Scenes/MainMenu.tscn")
	print("To Main Menu")
	
func _on_retry_pressed() -> void:
	var retry = get_tree().change_scene("res://Levels/1PrutasAtGulay/Level1/1stQuestion/Level_1.tscn")
	print('Retry level')


func _on_nextQuestion_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.12), "timeout")
	#var nextQ = get_tree().change_scene("res://Levels/1PrutasAtGulay/Level1/2ndQuestion/Level_2.tscn")
	$'%PrutasAtGulay'.show()
	print("Next Question")

