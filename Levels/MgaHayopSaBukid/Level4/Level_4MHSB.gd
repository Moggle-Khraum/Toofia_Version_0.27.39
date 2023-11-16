extends Control

signal repeat
	
#===========================================

func _ready() -> void:
	#This will play the Voiceover..
	voiceOver()
	

func _on_x_pressed() -> void:
	$"%infoAso".stream_paused = false
	$'%askVoice4'.stream_paused = false
	$'%asoVoice'.stream_paused = false
	$'%choiceA'.stream_paused = false
	$'%choiceB'.stream_paused = false
	$'%choiceC'.stream_paused = false
	$'%pickAnswer'.stream_paused = false

func _on_pauseButton_pressed() -> void:
	MenuClickSfxPlayer.play()
	$'%pausePanel'.show()
	print("Shows the Pause Panel")
	$"%infoAso".stream_paused = true
	$'%askVoice4'.stream_paused = true
	$'%asoVoice'.stream_paused = true
	$'%choiceA'.stream_paused = true
	$'%choiceB'.stream_paused = true
	$'%choiceC'.stream_paused = true
	$'%pickAnswer'.stream_paused = true

#=============================================================================

func _on_levels_pressed() -> void:
	var home = get_tree().change_scene('res://Levels/MgaHayopSaBukid/MgaHayopSaBukid.tscn')
	print('Go to Level Selection')
	
func _on_home_pressed() -> void:
	var home = get_tree().change_scene("res://Scenes/MainMenu.tscn")
	print("To Main Menu")
	
func _on_retry_pressed() -> void:
	var retry = get_tree().change_scene("res://Levels/MgaHayopSaBukid/Level4/Level_4MHSB.tscn")
	print('Retry level')
	
func _on_nextQuestion_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.12), "timeout")
	var nextQ = get_tree().change_scene("res://Levels/MgaHayopSaBukid/Level5/Level_5MHSB.tscn")

#=============================================================================
func _on_A_pressed():
	print('The Answer is Wrong!')
	WrongAnswer.play()
	print("Pressed A, wrong Answer")
	$'%ScorePanel2StarA'.show()
	

func _on_ScorePanel2StarA_visibility_changed() -> void:
	yield(get_tree().create_timer(0.12), "timeout")
	$'%wrongPick'.play()
	$'%animA'.play('blink')
	print("Shows 2 Star and Blink")
	

#=================================================================================
func _on_B_pressed():
	print('The Answer is Wrong!')
	WrongAnswer.play()
	print("Pressed B, Wrong Answer")
	$'%ScorePanel2StarB'.show()

func _on_ScorePanel2StarB_visibility_changed() -> void:
	yield(get_tree().create_timer(0.12), "timeout")
	$'%wrongPick'.play()
	$'%animB'.play('blink')
	print("Shows 2 Star and Blinky")
	
#================================================================================

func _on_C_pressed():
	print('The Answer is Correct!')
	CorrectAnswer.play()
	print('Pressed C, Correct Answer')
	$'%ScorePanel3StarC'.show()
	
func _on_ScorePanel3StarC_visibility_changed() -> void:
	yield(get_tree().create_timer(0.12), "timeout")
	$'%correctPick'.play()
	$'%animC1'.play('blink')
	
	
	
#=========================================================
#This is for the repeat info when pressing the button
func _on_repeat_pressed() -> void:
	$'%infoAso'.play()
	print("Repeat Info got Pressed")
	emit_signal("repeat")
	print("Emits Signal")
	$"%infoAso".stop()
	$'%coverButton'.show()
	$"%A".hide()
	$"%B".hide()
	$"%C".hide()
	print("Hide Repeat Button")
	if not $"%infoAso".playing or $'%asoVoice' or $"%askVoice4".playing or $"%choiceA".playing or $"%choiceB".playing or $"%choiceC".playing or $"%pickAnswer".playing:
		$"%coverButton".show()
		print("Cover Show")
	else:
		$"%coverButton".hide()
		print("Cover Hide")
	
func voiceOver():
	yield(get_tree().create_timer(0.5), "timeout")
	$'%infoAso'.play()
	if $"%infoAso".playing:
		$"%coverButton".show()

func _on_infoAso_finished() -> void:
	yield(get_tree().create_timer(0.10), "timeout")
	$'%asoVoice'.play()
	
func _on_asoVoice_finished():
	yield(get_tree().create_timer(0.9), "timeout")
	$'%askVoice4'.play()
	print('Play AskVoice')

func _on_askVoice4_finished() -> void:
	yield(get_tree().create_timer(0.10), "timeout")
	$'%choiceA'.play()
	$'%A'.show()
	$"%A".disabled = true
	yield(get_tree().create_timer(0.8), "timeout")
	print("Show A")
	print("Disabled A")
	
func _on_choiceA_finished() -> void:
	yield(get_tree().create_timer(0.10), "timeout")
	$'%choiceB'.play()
	$'%B'.show()
	$'%A'.hide()
	$"%B".disabled = true
	yield(get_tree().create_timer(0.8), "timeout")
	print("Show B")
	print("Disabled B")

func _on_choiceB_finished() -> void:
	yield(get_tree().create_timer(0.10), "timeout")
	$'%choiceC'.play()
	$'%C'.show()
	$'%A'.hide()
	$'%B'.hide()
	$"%C".disabled = true
	yield(get_tree().create_timer(0.8), "timeout")
	print("Show C")
	print("Disabled C")

func _on_choiceC_finished() -> void:
	yield(get_tree().create_timer(0.10), "timeout")
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

#==========================================================
		


