extends Control

signal repeat

func _ready() -> void:
	#This will play the Voiceover..
	voiceOver()

func _on_x_pressed() -> void:
	$'%AskVoice'.stream_paused = false
	$"%Choices".stream_paused = false

func _on_pauseButton_pressed() -> void:
	MenuClickSfxPlayer.play()
	$PausePanel.show()
	print("Shows the Pause Panel")
	$'%AskVoice'.stream_paused = true
	$"%Choices".stream_paused = true
	
#==============================================================================
func _on_A_pressed():
	print('The Answer is Wrong!')
	WrongAnswer.play()
	$'%ScorePanel2StarA'.show()
	print("Pressed A, wrong Answer")
	$'%AskVoice'.stream_paused = true
	$"%Choices".stream_paused = true
	
func _on_ScorePanel2StarA_visibility_changed() -> void:
	yield(get_tree().create_timer(0.12), "timeout")
	$'%wrongPick'.play()

#==========================================================================
	
func _on_B_pressed():
	print('The Answer is Correct!')
	CorrectAnswer.play()
	print("Pressed B, Correct Answer")
	$'%ScorePanel3StarB'.show()
	$'%AskVoice'.stream_paused = true
	$"%Choices".stream_paused = true
	
func _on_ScorePanel3StarB_visibility_changed() -> void:
	yield(get_tree().create_timer(0.5), "timeout")
	$'%correctPick'.play()
	
#========================================================================
func _on_C_pressed():
	print('The Answer is Wrong!')
	WrongAnswer.play()
	print('Pressed C, Wrong Answer')
	$'%ScorePanel2StarC'.show()
	$'%AskVoice'.stream_paused = true
	$"%Choices".stream_paused = true
	
func _on_ScorePanel2StarC_visibility_changed() -> void:
	yield(get_tree().create_timer(0.5), "timeout")
	$'%wrongPick'.play()
	
#========================================================================
	
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
	
	
func voiceOver():
	yield(get_tree().create_timer(0.5), "timeout")
	$'%AskVoice'.play()
	if $"%AskVoice".playing or $'%Choices'.playing:
		$"%coverButton".show()
	
	

func _on_AskVoice_finished() -> void:
	yield(get_tree().create_timer(0.10), "timeout")
	$'%Choices'.play()
	$'%AnswerPanel'.show()
	print("Plays Choices")

func _on_Choices_finished() -> void:
	$'%coverButton'.hide()
	print("Hide Cover")

func _on_levels_pressed() -> void:
	var levels = get_tree().change_scene('res://Levels/Fruits&Vegs/Fruits&VegsMain.tscn')
	print('Go to Level Selection')
	
func _on_retry_pressed() -> void:
	var retry = get_tree().change_scene("res://Levels/Fruits&Vegs/Level1-Apple/Level_1.tscn")
	print('Retry level')

func _on_nextQuestion_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.12), "timeout")
	var nextQ = get_tree().change_scene("res://Levels/Fruits&Vegs/Level2-Potato/Level_2.tscn")


