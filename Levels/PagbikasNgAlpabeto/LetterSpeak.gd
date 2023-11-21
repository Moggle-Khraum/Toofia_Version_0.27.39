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

#LETTERS B
func _on_Bb_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigB'.play()
	print("Play Big B")
	

#LETTERS C
func _on_Cc_pressed() -> void:
	pass # Replace with function body.





#LETTERS D
func _on_Dd_pressed() -> void:
	pass # Replace with function body.




#LETTERS E
func _on_Ee_pressed() -> void:
	pass # Replace with function body.



#LETTERS F
func _on_Ff_pressed() -> void:
	pass # Replace with function body.



#LETTERS G
func _on_Gg_pressed() -> void:
	pass # Replace with function body.



#LETTERS H
func _on_Hh_pressed() -> void:
	pass # Replace with function body.


#LETTERS I
func _on_Ii_pressed() -> void:
	pass # Replace with function body.


#LETTERS J
func _on_Jj_pressed() -> void:
	pass # Replace with function body.


func _on_Kk_pressed() -> void:
	pass # Replace with function body.

#LETTERS L
func _on_Ll_pressed() -> void:
	pass # Replace with function body.



#LETTERS M
func _on_Mm_pressed() -> void:
	pass # Replace with function body.



#LETTERS N
func _on_Nn_pressed() -> void:
	pass # Replace with function body.




#LETTERS Ñ (Enye)
func _on_Enye_pressed() -> void:
	pass # Replace with function body.


