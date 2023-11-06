extends Control

#THIS IS FOR THE SCROLL EFFECTS
var scrollerContainer: ScrollContainer
var targetScroll = 0.0
var scrollStep = 600
var scrollWeight = 0.5

signal pressed

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#getting the Node by calling it through by get_node
	scrollerContainer = $'%ScrollContainer'

# warning-ignore:unused_argument
func _process(delta: float) -> void:
	# Check if the ScrollContainer's content width is larger than its view width
	targetScroll = scrollerContainer.scroll_horizontal
	scrollerContainer.scroll_horizontal = lerp(scrollerContainer.scroll_horizontal, targetScroll, scrollWeight)

#This is for the Left Button
func _on_LeftButton_pressed() -> void:
	ScrollPop.play()
	# Calculate the target horizontal scroll position
	scrollerContainer.scroll_horizontal = lerp(scrollerContainer.scroll_horizontal, scrollerContainer.scroll_horizontal - scrollStep, scrollWeight)
	scrollerContainer.scroll_horizontal -= scrollStep
	print("Pressed Left Button '<='")
	
#This is for the Right Button
func _on_RightButton_pressed() -> void:
	ScrollPop.play()
	scrollerContainer.scroll_horizontal = lerp(scrollerContainer.scroll_horizontal, scrollerContainer.scroll_horizontal + scrollStep, scrollWeight)
	scrollerContainer.scroll_horizontal += scrollStep
	print("Pressed Rigght Button '=>'")

func _on_GoBackButton_pressed() -> void:
	print("Presses Go Back")
	MenuClickSfxPlayer.play()
	#handles the Go back button
	var backtoTopic = load('res://Scenes/MenuChoices.tscn')
	var levelSelect = get_tree().change_scene_to(backtoTopic)
	print("Going to Topic Selector")
	$'%fruitTheme'.stream_paused = true
	

################################################################################################
# THIS IS FOR THE LEVELS, THE BUTTONS OF LEVELS

#UPPER ROW BUTTONS
# THIS IS LEVEL 1
func _on_1Button_pressed() -> void:
	LevelsButtons.play()	
	print("Presses Level 1")
	var level1 = get_tree().change_scene("res://Levels/1PrutasAtGulay/Level1/1stQuestion/Level_1.tscn")
	emit_signal('pressed')
	#$".".hide()
	print ("You are now at Level 1")
	var playerdata = PlayerData.new()
	playerdata.createPlayerData1()
	print ("You are now at Level 1")
	MainMenuThemePlayer.stop()
	$'%fruitTheme'.stream_paused = true

# THIS IS LEVEL 2
func _on_2Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 2")
	var level2 = get_tree().change_scene("res://Levels/1PrutasAtGulay/Level2/2ndQuestion/Level_2.tscn")
	emit_signal('pressed')
	print ("You are now at Level 2")
	var playerdata2 = PlayerData2.new()
	playerdata2.createPlayerData2()
	$'%fruitTheme'.stream_paused = true
	print ("You are now at Level 2")
	
# THIS IS LEVEL 3
func _on_3Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 3")
	var level3 = get_tree().change_scene("res://Levels/1PrutasAtGulay/Level3/Level3.tscn")
	emit_signal('pressed')
	print ("You are now at Level 3")
	createPlayerData3()
	$'%fruitTheme'.stream_paused = true
	print ("You are now at Level 3")

# THIS IS LEVEL 4
func _on_4Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 4")
	var level4 = get_tree().change_scene("res://Levels/1PrutasAtGulay/Level4/level4.tscn")
	emit_signal('pressed')
	print ("You are now at Level 4")
	createPlayerData4()
	$'%fruitTheme'.stream_paused = true
	print ("You are now at Level 4")

# THIS IS LEVEL 5
func _on_9Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 5")
	var level5 = get_tree().change_scene("res://Levels/1PrutasAtGulay/Level5/level5.tscn")
	emit_signal('pressed')
	print ("You are now at Level 5")
	createPlayerData9()
	$'%fruitTheme'.stream_paused = true
	print ("You are now at Level 5")

# THIS IS LEVEL 6
func _on_10Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 6")
	var level6 = get_tree().change_scene("res://Levels/1PrutasAtGulay/Level6/level6.tscn")
	emit_signal('pressed')
	print ("You are now at Level 6")
	createPlayerData10()
	$'%fruitTheme'.stream_paused = true
	print ("You are now at Level 6")

# THIS IS LEVEL 7
func _on_11Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 7")
	var level7 = get_tree().change_scene("res://Levels/1PrutasAtGulay/Level7/level7.tscn")
	emit_signal('pressed')
	print ("You are now at Level 7")
	createPlayerData11()
	$'%fruitTheme'.stream_paused = true
	print ("You are now at Level 7")

# THIS IS LEVEL 8
func _on_12Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 8")
	var level8 = get_tree().change_scene("res://Levels/1PrutasAtGulay/Level8/level8.tscn")
	emit_signal('pressed')
	print ("You are now at Level 8")
	createPlayerData12()
	$'%fruitTheme'.stream_paused = true
	print ("You are now at Level 8")

### LOW ROW BUTTONS
# THIS IS LEVEL 9
func _on_5Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 9")
	var level9 = get_tree().change_scene("res://Levels/1PrutasAtGulay/Level9/level9.tscn")
	emit_signal('pressed')
	print ("You are now at Level 9")
	createPlayerData5()
	$'%fruitTheme'.stream_paused = true
	print ("You are now at Level 9")

# THIS IS LEVEL 10
func _on_6Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 10")
	var level10 = get_tree().change_scene("res://Levels/1PrutasAtGulay/nextLevel/Level10/level10.tscn")
	emit_signal('pressed')
	print ("You are now at Level 10")
	createPlayerData6()
	$'%fruitTheme'.stream_paused = true
	print ("Level 10 Data Folder Created")

# THIS IS LEVEL 11
func _on_7Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 11")
	var level11 = get_tree().change_scene("res://Levels/1PrutasAtGulay/nextLevel/Level11/level11.tscn")
	emit_signal('pressed')
	print ("You are now at Level 11")
	createPlayerData7()
	$'%fruitTheme'.stream_paused = true
	print ("Level 11 Data Folder Created")

# THIS IS LEVEL 12
func _on_8Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 12")
	var level12 = get_tree().change_scene("res://Levels/1PrutasAtGulay/nextLevel/Level12/level12.tscn")
	emit_signal('pressed')
	print ("You are now at Level 12")
	createPlayerData8()
	$'%fruitTheme'.stream_paused = true
	print ("Level 12 Data Folder Created")

# THIS IS LEVEL 13
func _on_13Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 13")
	var level13 = get_tree().change_scene("res://Levels/1PrutasAtGulay/nextLevel/Level13/level13.tscn")
	emit_signal('pressed')
	print ("You are now at Level 13")
	createPlayerData13()
	$'%fruitTheme'.stream_paused = true
	print ("Level 13 Data Folder Created")

# THIS IS LEVEL 14
func _on_14Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 14")
	var level14 = get_tree().change_scene("res://Levels/1PrutasAtGulay/nextLevel/Level14/level14.tscn")
	emit_signal('pressed')
	print ("You are now at Level 14")
	createPlayerData14()
	$'%fruitTheme'.stream_paused = true
	print ("Level 14 Data Folder Created")

# THIS IS LEVEL 15
func _on_15Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 15")
	var level15 = get_tree().change_scene("res://Levels/1PrutasAtGulay/nextLevel/Level15/level15.tscn")
	emit_signal('pressed')
	print ("You are now at Level 15")
	createPlayerData15()
	$'%fruitTheme'.stream_paused = true
	print ("Level 15 Data Folder Created")
	
# THIS IS LEVEL 16
func _on_Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 16")
	var level15 = get_tree().change_scene("res://Levels/1PrutasAtGulay/nextLevel/Level16/level16.tscn")
	emit_signal('pressed')
	print ("You are now at Level 16")
	$'%fruitTheme'.stream_paused = true
	#createPlayerData15()
	#print ("Level 16 Data Folder Created")
	
	
	
	


#THE BUTTONS BELOW IS FOR THE LEVEL ERROR
#THIS IS FOR THE ERROR SOUND EFFECTS
func _on_lockInfo_pressed() -> void:
	LevelError.play()
	print("Level Locked")
	$'%bgPanel'.show()
	print("Open Level Locked")
	pass # Replace with function body.

func _on_hide_pressed() -> void:
	MenuClickSfxPlayer.play()
	$'%bgPanel'.hide()
	print("Hides LevelLock")


#===============================================
# THIS WILL CREATE THE FOLDER THAT STORES THIS LEVEL'S SCRIPTS
class PlayerData:
	func createPlayerData1():
		print("Creating..")
		# Ensure the configuration folder exists
		var data_dir = "user://playerData/level1/1stQuestion"
		var dir = Directory.new()
		if not dir.dir_exists(data_dir):
			dir.make_dir_recursive(data_dir)
			print("Level1 Data Done!")
		print("Folder Created..")

class PlayerData2 extends PlayerData:
	func createPlayerData2():
		print("Creating..")
		# Ensure the configuration folder exists
		var data_dir = "user://playerData/level2/2ndQuestion"
		var dir = Directory.new()
		if not dir.dir_exists(data_dir):
			dir.make_dir_recursive(data_dir)
			print("Level2 Data Done!")
		print("Folder Created..")




	
func createPlayerData3():
	print("Creating..")
	# Ensure the configuration folder exists
	var data_dir = "user://playerData/level3/1stQuestion"
	var dir = Directory.new()
	if not dir.dir_exists(data_dir):
		dir.make_dir_recursive(data_dir)
		print("Level3 Data Done!")
	print("Folder Created..")

func createPlayerData4():
	print("Creating..")
	# Ensure the configuration folder exists
	var data_dir = "user://playerData/level4/1stQuestion"
	var dir = Directory.new()
	if not dir.dir_exists(data_dir):
		dir.make_dir_recursive(data_dir)
		print("Level4 Data Done!")
	print("Folder Created..")
	
func createPlayerData5():
	print("Creating..")
	# Ensure the configuration folder exists
	var data_dir = "user://playerData/level5/1stQuestion"
	var dir = Directory.new()
	if not dir.dir_exists(data_dir):
		dir.make_dir_recursive(data_dir)
		print("Level5 Data Done!")
	print("Folder Created..")
	
func createPlayerData6():
	print("Creating..")
	# Ensure the configuration folder exists
	var data_dir = "user://playerData/level6/1stQuestion"
	var dir = Directory.new()
	if not dir.dir_exists(data_dir):
		dir.make_dir_recursive(data_dir)
		print("Level6 Data Done!")
	print("Folder Created..")
	
func createPlayerData7():
	print("Creating..")
	# Ensure the configuration folder exists
	var data_dir = "user://playerData/level7/1stQuestion"
	var dir = Directory.new()
	if not dir.dir_exists(data_dir):
		dir.make_dir_recursive(data_dir)
		print("Level7 Data Done!")
	print("Folder Created..")
	
func createPlayerData8():
	print("Creating..")
	# Ensure the configuration folder exists
	var data_dir = "user://playerData/level8/1stQuestion"
	var dir = Directory.new()
	if not dir.dir_exists(data_dir):
		dir.make_dir_recursive(data_dir)
		print("Level8 Data Done!")
	print("Folder Created..")
	
func createPlayerData9():
	print("Creating..")
	# Ensure the configuration folder exists
	var data_dir = "user://playerData/level9/1stQuestion"
	var dir = Directory.new()
	if not dir.dir_exists(data_dir):
		dir.make_dir_recursive(data_dir)
		print("Level9 Data Done!")
	print("Folder Created..")
	
func createPlayerData10():
	print("Creating..")
	# Ensure the configuration folder exists
	var data_dir = "user://playerData/level10/1stQuestion"
	var dir = Directory.new()
	if not dir.dir_exists(data_dir):
		dir.make_dir_recursive(data_dir)
		print("Level10 Data Done!")
	print("Folder Created..")
	
func createPlayerData11():
	print("Creating..")
	# Ensure the configuration folder exists
	var data_dir = "user://playerData/level11/1stQuestion"
	var dir = Directory.new()
	if not dir.dir_exists(data_dir):
		dir.make_dir_recursive(data_dir)
		print("Level11 Data Done!")
	print("Folder Created..")
	
func createPlayerData12():
	print("Creating..")
	# Ensure the configuration folder exists
	var data_dir = "user://playerData/level12/1stQuestion"
	var dir = Directory.new()
	if not dir.dir_exists(data_dir):
		dir.make_dir_recursive(data_dir)
		print("Level12 Data Done!")
	print("Folder Created..")
	
func createPlayerData13():
	print("Creating..")
	# Ensure the configuration folder exists
	var data_dir = "user://playerData/level13/1stQuestion"
	var dir = Directory.new()
	if not dir.dir_exists(data_dir):
		dir.make_dir_recursive(data_dir)
		print("Level13 Data Done!")
	print("Folder Created..")
	
func createPlayerData14():
	print("Creating..")
	# Ensure the configuration folder exists
	var data_dir = "user://playerData/level14/1stQuestion"
	var dir = Directory.new()
	if not dir.dir_exists(data_dir):
		dir.make_dir_recursive(data_dir)
		print("Level14 Data Done!")
	print("Folder Created..")
	
func createPlayerData15():
	print("Creating..")
	# Ensure the configuration folder exists
	var data_dir = "user://playerData/level15/1stQuestion"
	var dir = Directory.new()
	if not dir.dir_exists(data_dir):
		dir.make_dir_recursive(data_dir)
		print("Level15 Data Done!")
	print("Folder Created..")


func _on_PrutasGulay_visibility_changed():
	$"%fruitTheme".play()
	print("Plays Fruit")

