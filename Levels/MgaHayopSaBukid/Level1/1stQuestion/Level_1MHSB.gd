extends Control


signal repeat


func _ready() -> void:
	#This will play the Voiceover..
	voiceOver()

func voiceOver():
	yield(get_tree().create_timer(0.9), "timeout")
	$'%infoChicken'.play()
	if $"%infoChicken".playing:
		$"%coverButton".show()
#========================================================================================
	
#This is for the repeat info when pressing the button
func _on_repeat_pressed() -> void:
	$'%infoChicken'.play()
	print("Repeat Info got Pressed")
	emit_signal("repeat")
	print("Emits Signal")
	$"%infoChicken".stop()
	
	print("Info Chicken stop")
	$'%coverButton'.show()
	$"%A".hide()
	$"%B".hide()
	$"%C".hide()
	print("Hide Repeat Button")
	if not $"%infoChicken".playing or $'%chickenVoice' or $"%askVoice1".playing or $"%choiceA".playing or $"%choiceB".playing or $"%choiceC".playing or $"%pickAnswer".playing:
		$"%coverButton".show()
		print("Cover Show")
	else:
		$"%coverButton".hide()
		print("Cover Hide")
#========================================================================================

func _on_x_pressed() -> void:
	$"%infoChicken".stream_paused = false
	$'%chickenVoice'.stream_paused = false
	$'%askVoice1'.stream_paused = false
	$"%choiceA".stream_paused = false
	$"%choiceB".stream_paused = false
	$"%choiceC".stream_paused = false
	$"%pickAnswer".stream_paused = false


func _on_pauseButton_pressed() -> void:
	MenuClickSfxPlayer.play()
	$'%pausePanel'.show()
	print("Shows the Pause Panel")
	$"%infoChicken".stream_paused = true
	$'%chickenVoice'.stream_paused = true
	$'%askVoice1'.stream_paused = true
	$"%choiceA".stream_paused = true
	$"%choiceB".stream_paused = true
	$"%choiceC".stream_paused = true
	$"%pickAnswer".stream_paused = true


#==============================================================================
func _on_A_pressed():
	print('The Answer is Correct!')
	CorrectAnswer.play()
	print("Pressed A, Correct Answer")
	$'%ScorePanel3StarA'.show()

func _on_ScorePanel3StarA_visibility_changed():
	yield(get_tree().create_timer(0.12), "timeout")
	$'%correctPick'.play()
	$'%animA2'.play('blink')
	$"%animA".play('blink')
	print("Shows 2 Star and Blink")
#=====================================================
	
func _on_B_pressed():
	print('The Answer is Wrong!')
	WrongAnswer.play()
	print("Pressed B, Wrong Answer")
	$'%ScorePanel2StarB'.show()
	
func _on_ScorePanel2StarB_visibility_changed():
	yield(get_tree().create_timer(0.12), "timeout")
	$'%wrongPick'.play()
	print("Plays WrongPick")
	$'%animB'.play('blink')
	$'%animB2'.play('blink')
	print("Shows 2 Star and Blinky")
#=============================================================
	
func _on_C_pressed():
	print('The Answer is Wrong!')
	WrongAnswer.play()
	print("Pressed C, Wrong Answer")
	$'%ScorePanel2StarC'.show()
	
func _on_ScorePanel2StarC_visibility_changed():
	yield(get_tree().create_timer(0.12), "timeout")
	$'%wrongPick'.play()
	print("Plays Wrong Pick")
	$'%animA'.play('blink')
	$'%animC'.play('blink')
	print("Shows 2 Star and Blinky")
	
	
#========================================================================

func _on_infoChicken_finished() -> void:
	yield(get_tree().create_timer(0.9), "timeout")
	$"%chickenVoice".play()
	print("Plays Chicken Voice")

func _on_chickenVoice_finished():
	yield(get_tree().create_timer(0.9), "timeout")
	$'%askVoice1'.play()
	print('Play AskVoice')
	
func _on_askVoice1_finished() -> void:
	yield(get_tree().create_timer(0.9), "timeout")
	$'%choiceA'.play()
	$'%A'.show()
	$"%A".disabled = true
	yield(get_tree().create_timer(0.8), "timeout")
	print("Show A")
	print("Disabled A")

func _on_choiceA_finished() -> void:
	yield(get_tree().create_timer(0.9), "timeout")
	$'%choiceB'.play()
	$'%B'.show()
	$'%A'.hide()
	$"%B".disabled = true
	yield(get_tree().create_timer(0.9), "timeout")
	print("Show B")
	print("Disabled B")


func _on_choiceB_finished() -> void:
	yield(get_tree().create_timer(0.9), "timeout")
	$'%choiceC'.play()
	$'%C'.show()
	$'%A'.hide()
	$'%B'.hide()
	$"%C".disabled = true
	yield(get_tree().create_timer(0.9), "timeout")
	print("Show C")
	print("Disabled C")


func _on_choiceC_finished() -> void:
	yield(get_tree().create_timer(0.9), "timeout")
	$'%pickAnswer'.play()
	$'%A'.show()
	$'%B'.show()
	print("Show A, B, C")
	

func _on_pickAnswer_finished() -> void:
	$'%coverButton'.hide()
	$"%C".disabled = false
	$"%B".disabled = false
	$"%A".disabled = false
	print("Enabled Button A, B, C")
	
	
	
#===================================================================

func _on_levels_pressed() -> void:
	var home = get_tree().change_scene('res://Levels/MgaHayopSaBukid/MgaHayopSaBukid.tscn')
	print('Go to Level Selection')
	
func _on_home_pressed() -> void:
	var home = get_tree().change_scene("res://Scenes/MainMenu.tscn")
	print("To Main Menu")
	
func _on_retry_pressed() -> void:
	var retry = get_tree().change_scene("res://Levels/MgaHayopSaBukid/Level1/1stQuestion/Level_1MHSB.tscn")
	print('Retry level')

func _on_nextQuestion_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.12), "timeout")
	var retry = get_tree().change_scene("res://Levels/MgaHayopSaBukid/Level2/Level_2MHSB.tscn")



