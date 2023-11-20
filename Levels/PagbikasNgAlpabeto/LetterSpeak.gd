extends Control

#This is for the Right Button
func _on_RightButton_pressed() -> void:
	ScrollPop.play()
	var goLvl2 = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/NextLevelP2Z/LetterSpeak2.tscn")
	print("Pressed Rigght Button '=>'")


func _on_GoBackButton_pressed() -> void:
	print("Presses Go Back")
	MenuClickSfxPlayer.play()
	#handles the Go back button
	var levelSelect = get_tree().change_scene("res://Scenes/MenuChoices.tscn")
	#$'%animalsTheme'.stream_paused = true
	print("Going to Topic Selector")
	


#THIS HERE IS FOR THE BUTTONS
#LETTERS A
func _on_Aa_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigA'.play()
	print("Play Big A")

func _on_bigA_finished() -> void:
	yield(get_tree().create_timer(0.18), "timeout")
	$'%Label3'.show()
	$'%smallA'.play()
	print("Play Small A")














