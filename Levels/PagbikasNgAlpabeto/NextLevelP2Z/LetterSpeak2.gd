extends Control


#This is for the Right Button
func _on_RightButton_pressed() -> void:
	ScrollPop.play()
	var goLvl1 = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/LetterSpeak.tscn")
	print("Pressed Rigght Button '=>'")

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

#LETTERS Z
func _on_Zz_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigZ'.play()
	print("Play Big P")

#LETTERS Ñ (Enye)
func _on_Enye_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigEnye'.play()
	print("Play Big B")

#LETTERS J
func _on_Jj_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigJ'.play()
	print("Play Big B")

#LETTERS F
func _on_Ff_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigF'.play()
	print("Play Big B")

#LETTERS C
func _on_Cc_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigC'.play()
	print("Play Big C")


#LETTERS H
func _on_Hh_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigH'.play()
	print("Play Big H")

#LETTERS D
func _on_Dd_pressed() -> void:
	#ScrollPop.play()
	yield(get_tree().create_timer(0.15), "timeout")
	$'%bigD'.play()
	print("Play Big D")
