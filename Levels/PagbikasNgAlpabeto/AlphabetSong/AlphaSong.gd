extends Control

func _ready() -> void:
	$'%VPponetaka'.stop()
	print("Ponetaka has Stop")

func _on_LeftButton_pressed() -> void:
	ScrollPop.play()
	#yield(get_tree().create_timer(0.5), "timeout")
	var goLvl2 = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/NextLevelP2Z/LetterSpeak2.tscn")
	print("Going Back")

func _on_PlayVPonetaka_button_down() -> void:
	$'%VPponetaka'.play()
	print("Un Paused Ponetaka")
	
	if $'%VPponetaka'.is_playing():
		$'%PlayVPonetaka'.hide()
		$'%curtain'.hide()
		print("Poentaka is Playing")
		
	elif !$'%VPponetaka'.is_playing():
		$'%PlayVPonetaka'.show()
		$'%curtain'.show()
		print("Ponetaka is Not Playing")
		
	
func _on_VPponetaka_finished() -> void:
	$'%curtain'.show()
	$'%PlayVPonetaka'.show()
	print("Show Button | Curtain")
	
func _on_Ponetaka_pressed() -> void:
	$'%Ponetaka'.show()
	print("Show Ponetaka")
	$'%thirdVideo'.hide()
	$'%secondVideo'.hide()
	$'%firstVideo'.hide()
	$'%LeftButton'.hide()
	print("Hides Left Button and 2 Videos")

#Exit Video
func _on_exitPonetaka_pressed() -> void:
	$'%Ponetaka'.hide()
	print("Hides Ponetaka")
	$'%thirdVideo'.show()
	$'%secondVideo'.show()
	$'%firstVideo'.show()
	$'%LeftButton'.show()
	print("Shows Left Button and 2 Videos")
	var gobacktostart = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/AlphabetSong/AlphaSong.tscn")
	print("Restart the Scene")



