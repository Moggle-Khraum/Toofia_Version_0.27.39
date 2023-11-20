extends Control



func _ready() -> void:
	$'%VideoPlayer'.stop()
	print("VP is Stop")

func _on_return_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.5), "timeout")
	var goLvl2 = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/NextLevelP2Z/LetterSpeak2.tscn")
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
	
	
#----------------------------------

# Speed of the rotation
var angular_speed = PI
# Angular speed of one full rotation per second

func _process(delta: float) -> void:
	#Rotate the gear sprite
		$'%cog'.rotation += angular_speed * delta
		$'%cog0'.rotation -= angular_speed * delta
		$'%cog1'.rotation -= angular_speed * delta
		$'%cog2'.rotation += angular_speed * delta
