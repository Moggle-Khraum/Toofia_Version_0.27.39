extends Control

signal repeat

# Called when the node enters the scene tree for the first time.
func _ready():
	#This will play the Voiceover..
	voiceOver()
	
#===========================================
func _on_x_pressed() -> void:
	$'%AskVoice'.stream_paused = false
	$"%Choices".stream_paused = false

func _on_pauseButton_pressed() -> void:
	MenuClickSfxPlayer.play()
	$pausePanel.show()
	print("Shows the Pause Panel")
	$'%AskVoice'.stream_paused = true
	$"%Choices".stream_paused = true

#==============================================================================
func _on_A_pressed():
	WrongAnswer.play()
	$'%ScorePanel2StarA'.show()
	print("Pressed A, wrong Answer")
	$'%AskVoice'.stream_paused = true
	$"%Choices".stream_paused = true
	
func _on_ScorePanel2StarA_visibility_changed() -> void:
	yield(get_tree().create_timer(0.12), "timeout")
	$'%wrongPick'.play()
	print("Shows 2 stars")

#==========================================================================
	
func _on_B_pressed():
	WrongAnswer.play()
	$'%ScorePanel2StarB'.show()
	$'%AskVoice'.stream_paused = true
	$"%Choices".stream_paused = true
	
func _on_ScorePanel2StarB_visibility_changed() -> void:
	yield(get_tree().create_timer(0.5), "timeout")
	$'%wrongPick'.play()
	
#========================================================================
func _on_C_pressed():
	CorrectAnswer.play()
	$'%ScorePanel3StarC'.show()
	$'%AskVoice'.stream_paused = true
	$"%Choices".stream_paused = true
	
func _on_ScorePanel3StarC_visibility_changed() -> void:
	yield(get_tree().create_timer(0.5), "timeout")
	$'%correctPick'.play()
	
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
	var home = get_tree().change_scene('res://Levels/Fruits&Vegs/Fruits&VegsMain.tscn')
	print('Go to Level Selection')
	
func _on_retry_pressed() -> void:
	var retry = get_tree().change_scene("res://Levels/Fruits&Vegs/nextLevel/Level10-Okra/level10.tscn")
	print('Retry level')

func _on_nextQuestion_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.12), "timeout")
	var retry = get_tree().change_scene("res://Levels/Fruits&Vegs/nextLevel/Level11-Dalandan/level11.tscn")




