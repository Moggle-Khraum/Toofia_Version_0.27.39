extends Control

#This is for the Right Button
func _on_RightButton_pressed() -> void:
	ScrollPop.play()
	var goLvl2 = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/NextLevelP2Z/LetterSpeak2.tscn")
	print("Pressed Right Button '=>'")


func _on_GoBackButton_pressed() -> void:
	print("Presses Go Back")
	MenuClickSfxPlayer.play()
	#handles the Go back button
	var levelSelect = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/AlphabetSong/AlphaSong.tscn")
	#$'%animalsTheme'.stream_paused = true
	print("Going to Topic Selector")
	


#THIS HERE IS FOR THE BUTTONS
#LETTERS A
func _on_Aa_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigA'.play()
	print("Play Big A")


#LETTERS B
func _on_Bb_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigB'.play()
	print("Play Big B")

#LETTERS E
func _on_Ee_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigE'.play()
	print("Play Big B")


#LETTERS G
func _on_Gg_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigG'.play()
	print("Play Big B")



#LETTERS I
func _on_Ii_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigI'.play()
	print("Play Big I")

func _on_Kk_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigK'.play()
	print("Play Big B")

#LETTERS L
func _on_Ll_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigL'.play()
	print("Play Big B")

#LETTERS M
func _on_Mm_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigM'.play()
	print("Play Big M")

#LETTERS N
func _on_Nn_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigN'.play()
	print("Play Big B")

#LETTERS S
func _on_Ss_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigS'.play()
	print("Play Big S")

#LETTERS O
func _on_Oo_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigE'.play()
	print("Play Big O")

#LETTERS U
func _on_Uu_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigU'.play()
	print("Play Big P")

#LETTERS T
func _on_Tt_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigT'.play()
	print("Play Big P")


#LETTERS Y
func _on_Yy_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigY'.play()
	print("Play Big P")

#LETTERS NGng
func _on_NGng_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigNG'.play()
	print("Play Big P")
