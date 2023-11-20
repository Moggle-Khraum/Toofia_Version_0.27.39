extends Control


#This is for the Right Button
func _on_RightButton_pressed() -> void:
	ScrollPop.play()
	var goLvl1 = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/LetterSpeak.tscn")
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
func _on_Pp_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigP'.play()
	print("Play Big P")

func _on_bigP_finished() -> void:
	yield(get_tree().create_timer(0.18), "timeout")
	$'%Label3'.show()
	$'%smallP'.play()
	print("Play Small P")

#THIS IS FOR THE ALPHABET SONG------
func _on_alphabetsong_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.5), "timeout")
	var goingToAlphabetSong = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/AlphabetSong/AlphaSong.tscn")
	print("Going to Song")

	
