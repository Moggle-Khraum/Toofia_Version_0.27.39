extends Control


#This is for the Right Button
func _on_RightButton_pressed() -> void:
	ScrollPop.play()
	var goLvl1 = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/LetterSpeak.tscn")
	print("Pressed Rigght Button '=>'")

#THIS IS FOR THE ALPHABET SONG------
func _on_RightButton2_pressed() -> void:
	print("Pressed '=>' ")
	ScrollPop.play()
	#yield(get_tree().create_timer(0.5), "timeout")
	var goingToAlphabetSong = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/AlphabetSong/AlphaSong.tscn")
	print("Going to Song")


func _on_GoBackButton_pressed() -> void:
	print("Presses Go Back")
	MenuClickSfxPlayer.play()
	#handles the Go back button
	var levelSelect = get_tree().change_scene("res://Scenes/MenuChoices.tscn")
	#$'%animalsTheme'.stream_paused = true
	print("Going to Topic Selector")
	


#THIS HERE IS FOR THE BUTTONS
#LETTERS NGng
func _on_NGng_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigNg'.play()
	print("Play Big P")

#LETTERS O
func _on_Oo_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigO'.play()
	print("Play Big P")

#LETTERS P
func _on_Pp_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigP'.play()
	print("Play Big P")

#LETTERS Q
func _on_Qq_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigQ'.play()
	print("Play Big P")

#LETTERS R
func _on_Rr_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigR'.play()
	print("Play Big P")

#LETTERS S
func _on_Ss_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigS'.play()
	print("Play Big P")

#LETTERS T
func _on_Tt_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigT'.play()
	print("Play Big P")

#LETTERS U
func _on_Uu_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigU'.play()
	print("Play Big P")

#LETTERS V
func _on_Vv_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigV'.play()
	print("Play Big P")

#LETTERS W
func _on_Ww_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigW'.play()
	print("Play Big P")

#LETTERS X
func _on_Xx_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigX'.play()
	print("Play Big P")

#LETTERS Y
func _on_Yy_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigY'.play()
	print("Play Big P")

#LETTERS Z
func _on_Zz_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigZ'.play()
	print("Play Big P")




