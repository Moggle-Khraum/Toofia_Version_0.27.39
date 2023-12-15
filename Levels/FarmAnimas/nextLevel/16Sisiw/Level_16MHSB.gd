extends Control


signal repeat


func _ready() -> void:
	#This will play the Voiceover..
	voiceOver()
	
func voiceOver():
	yield(get_tree().create_timer(0.5), "timeout")
	$'%infoSisiw'.play()
	if $'%infoSisiw'.playing:
		$"%coverButton".show()
	
#========================================================================================
	
#This is for the repeat info when pressing the button
func _on_repeat_pressed() -> void:
	print("Repeat Info got Pressed")
	emit_signal("repeat")
	print("Emits Signal")
	$'%coverButton'.show()
	$'%AnswerPanel'.hide()
	print("Hide Repeat Button")
	voiceOver()
	print("Play VoiceOver")
#========================================================================================

func _on_x_pressed() -> void:
	$"%infoSisiw".stream_paused = false
	$'%sisiwVoice'.stream_paused = false
	$'%AskVoice'.stream_paused = false
	$"%Choices".stream_paused = false


func _on_pauseButton_pressed() -> void:
	MenuClickSfxPlayer.play()
	$'%pausePanel'.show()
	print("Shows the Pause Panel")
	$"%infoSisiw".stream_paused = true
	$'%sisiwVoice'.stream_paused = true
	$'%AskVoice'.stream_paused = true
	$"%Choices".stream_paused = true


#==============================================================================
func _on_A_pressed():
	print('The Answer is Correct!')
	CorrectAnswer.play()
	print("Pressed A, Correct Answer")
	$'%ScorePanel3StarA'.show()
	$'%AskVoice'.stream_paused = true
	$"%Choices".stream_paused = true
	$"%infoSisiw".stream_paused = true
	$'%sisiwVoice'.stream_paused = true

func _on_ScorePanel3StarA_visibility_changed():
	yield(get_tree().create_timer(0.12), "timeout")
	$'%correctPick'.play()
	
#=====================================================
	
func _on_B_pressed():
	print('The Answer is Wrong!')
	WrongAnswer.play()
	print("Pressed B, Wrong Answer")
	$'%ScorePanel2StarB'.show()
	$'%AskVoice'.stream_paused = true
	$"%Choices".stream_paused = true
	$"%infoSisiw".stream_paused = true
	$'%sisiwVoice'.stream_paused = true
	
func _on_ScorePanel2StarB_visibility_changed():
	yield(get_tree().create_timer(0.12), "timeout")
	$'%wrongPick'.play()
#=============================================================
	
func _on_C_pressed():
	print('The Answer is Wrong!')
	WrongAnswer.play()
	print("Pressed C, Wrong Answer")
	$'%ScorePanel2StarC'.show()
	$'%AskVoice'.stream_paused = true
	$"%Choices".stream_paused = true
	$"%infoSisiw".stream_paused = true
	$'%sisiwVoice'.stream_paused = true
	
func _on_ScorePanel2StarC_visibility_changed():
	yield(get_tree().create_timer(0.12), "timeout")
	$'%wrongPick'.play()
	
	
#========================================================================

func _on_infoSisiw_finished() -> void:
	yield(get_tree().create_timer(0.9), "timeout")
	$"%sisiwVoice".play()

func _on_sisiwVoice_finished():
	yield(get_tree().create_timer(0.9), "timeout")
	$'%AskVoice'.play()
	print('Play AskVoice')
	

func _on_AskVoice_finished() -> void:
	yield(get_tree().create_timer(0.10), "timeout")
	$'%Choices'.play()
	$'%AnswerPanel'.show()
	print("Plays Choices")

func _on_Choices_finished() -> void:
	$'%coverButton'.hide()
	print("Hide Cover")



func _on_levels_pressed() -> void:
	ScrollPop.play()
	var home = get_tree().change_scene('res://Levels/FarmAnimas/MgaHayopSaBukid.tscn')
	print('Go to Level Selection')
	
func _on_home_pressed() -> void:
	ScrollPop.play()
	var home = get_tree().change_scene("res://Scenes/MainMenu.tscn")
	print("To Main Menu")
	
func _on_retry_pressed() -> void:
	ScrollPop.play()
	var retry = get_tree().change_scene("res://Levels/FarmAnimas/nextLevel/16Sisiw/Level_16MHSB.tscn")





