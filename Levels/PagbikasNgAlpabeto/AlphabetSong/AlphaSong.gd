extends Control



func _ready() -> void:
	$'%VideoPlayer'.stop()
	print("VP is Stop")



func _on_return_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.5), "timeout")
	var levelSelect = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/LetterSpeak.tscn")
	print("Going Back")

func _on_PLAYTHEVIDEO_button_down() -> void:
	$'%VideoPlayer'.play()
	print("Un Paused the Video")
	
	if $'%VideoPlayer'.is_playing():
		$'%PLAYTHEVIDEO'.hide()
		$'%curtain'.hide()
		print("VP is Playing")
	elif !$'%VideoPlayer'.is_playing():
		$'%PLAYTHEVIDEO'.show()
		$'%curtain'.show()
		print("VP is Not Playing")
	
func _on_VideoPlayer_finished() -> void:
	$'%curtain'.show()
	$'%PLAYTHEVIDEO'.show()
	print("Show Button | Curtain")
	
	
