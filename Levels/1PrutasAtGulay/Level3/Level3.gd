extends Control


signal repeat

const USERNAME_FILE_PATH = "user://settings/username.gmd"


# Called when the node enters the scene tree for the first time.
func _ready():
	#This will play the Voiceover..
	voiceOver()
	
#===========================================
func voiceOver():
	#if self.has_signal('PlayCoconut'):
	yield(get_tree().create_timer(0.5), "timeout")
	$'%infoKarot'.play()
	print("Plays Karot")
	print("Hides Repeat Button")
	if $"%infoKarot".playing:
		$"%coverButton".show()
#=============================================

func _on_x_pressed():
	$"%infoKarot".stream_paused = false
	print("Info Karot Plays")
	$'%askVoice3'.stream_paused = false
	$'%choiceA'.stream_paused = false
	$'%choiceB'.stream_paused = false
	$'%choiceC'.stream_paused = false
	$'%pickAnswer'.stream_paused = false


func _on_pauseButton_pressed():
	MenuClickSfxPlayer.play()
	$"%PausePanel".show()
	print("Shows the Pause Panel")
	$"%infoKarot".stream_paused = true
	print("Info Potato Stop")
	$'%askVoice3'.stream_paused = true
	$'%choiceA'.stream_paused = true
	$'%choiceB'.stream_paused = true
	$'%choiceC'.stream_paused = true
	$'%pickAnswer'.stream_paused = true

#===========================================

func _on_A_pressed():
	print('The Answer is Correct!')
	CorrectAnswer.play()
	$"%carrot".hide()
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
	$"%carrot".hide()
	print("Pressed B, Wrong Answer")
	$'%ScorePanel2StarB'.show()
	
func _on_ScorePanel2StarB_visibility_changed():
	yield(get_tree().create_timer(0.12), "timeout")
	$ScorePanel2StarB/wrongpick.play()
	print("Plays WrongPick")
	$'%animB'.play('blink')
	$'%animB2'.play('blink')
	print("Shows 2 Star and Blinky")
#=============================================================

func _on_C_pressed():
	print('The Answer is Wrong!')
	WrongAnswer.play()
	$"%carrot".hide()
	print("Pressed C, Wrong Answer")
	$'%ScorePanel2StarC'.show()
	
func _on_ScorePanel2StarC_visibility_changed():
	yield(get_tree().create_timer(0.12), "timeout")
	$'%wrongPick'.play()
	print("Plays Wrong Pick")
	$'%animA'.play('blink')
	$'%animC'.play('blink')
	print("Shows 2 Star and Blinky")
	
#=============================================s
func _on_repeat_pressed():
	$'%infoKarot'.play()
	print("Repeat Info got Pressed")
	emit_signal("repeat")
	print("Emits Signal")
	$"%infoKarot".stop()
	print("Info Cabbage stop")
	$'%coverButton'.show()
	$"%A".hide()
	$"%B".hide()
	$"%C".hide()
	print("Hide Repeat Button")
	if not $"%infoKarot".playing or $"%askVoice3".playing or $"%choiceA".playing or $"%choiceB".playing or $"%choiceC".playing or $"%pickAnswer".playing:
		$"%coverButton".show()
		print("Cover Show")
	else:
		$"%coverButton".hide()
		print("Cover Hide")
#==================================================

func _on_infoCabbage_finished():
	yield(get_tree().create_timer(0.10), "timeout")
	$'%askVoice3'.play()
	print("Play Cabbage Info")

func _on_askVoice3_finished():
	yield(get_tree().create_timer(0.10), "timeout")
	$'%choiceA'.play()
	$'%A'.show()
	$"%A".disabled = true
	yield(get_tree().create_timer(0.8), "timeout")
	print("Show A")
	print("Disabled A")

func _on_choiceA_finished():
	yield(get_tree().create_timer(0.10), "timeout")
	$'%choiceB'.play()
	$'%B'.show()
	$'%A'.hide()
	$"%B".disabled = true
	yield(get_tree().create_timer(0.8), "timeout")
	print("Show B")
	print("Disabled B")

func _on_choiceB_finished():
	yield(get_tree().create_timer(0.10), "timeout")
	$'%choiceC'.play()
	$'%C'.show()
	$'%A'.hide()
	$'%B'.hide()
	$"%C".disabled = true
	yield(get_tree().create_timer(0.8), "timeout")
	print("Show C")
	print("Disabled C")

func _on_choiceC_finished():
	yield(get_tree().create_timer(0.10), "timeout")
	$'%pickAnswer'.play()
	$'%A'.show()
	$'%B'.show()
	print("Show A, B, C")
	#$'%repeatInfo'.play()
	print("Plays Repeat Info")

func _on_repeatInfo_finished():
	if $'%repeatInfo'.playing:
		$'%coverButton'.show()
		print("Cover Repeat buttons")
	else:
		$'%coverButton'.hide()
		$"%C".disabled = false
		$"%B".disabled = false
		$"%A".disabled = false
		print("Enabled Button A, B, C")

func _on_pickAnswer_finished():
	$'%coverButton'.hide()
	$"%C".disabled = false
	$"%B".disabled = false
	$"%A".disabled = false
	print("Enabled Button A, B, C")



func _on_levels_pressed() -> void:
	$'%PrutasAtGulay'.show()
	print('Go to Level Selection')
	
func _on_home_pressed() -> void:
	var home = get_tree().change_scene("res://Scenes/MainMenu.tscn")
	print("To Main Menu")
	
func _on_retry_pressed() -> void:
	var retry = get_tree().change_scene("res://Levels/1PrutasAtGulay/Level3/Level3.tscn")
	print('Retry level')

func _on_PrutasAtGulay_visibility_changed():
	$"%fruitTheme".play()
	print("Plays Fruit")


func _on_nextQuestion_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.12), "timeout")
	$'%PrutasAtGulay'.show()
