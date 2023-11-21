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
	
#LETTERS C
func _on_Cc_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigC'.play()
	print("Play Big C")

#LETTERS D
func _on_Dd_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigD'.play()
	print("Play Big D")

#LETTERS E
func _on_Ee_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigE'.play()
	print("Play Big B")

#LETTERS F
func _on_Ff_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigF'.play()
	print("Play Big B")

#LETTERS G
func _on_Gg_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigG'.play()
	print("Play Big B")

#LETTERS H
func _on_Hh_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigH'.play()
	print("Play Big B")

#LETTERS I
func _on_Ii_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigI'.play()
	print("Play Big B")

#LETTERS J
func _on_Jj_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigJ'.play()
	print("Play Big B")

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
	print("Play Big B")

#LETTERS N
func _on_Nn_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigN'.play()
	print("Play Big B")

#LETTERS Ñ (Enye)
func _on_Enye_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigEnye'.play()
	print("Play Big B")

