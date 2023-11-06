extends Panel

const USERNAME_FILE_PATH = "user://settings/username.gmd"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#This displays the Username into the label
	var config = File.new()
	if config.open(USERNAME_FILE_PATH, File.READ) == OK:
		# Read the stored username from the file
		var userName = config.get_as_text()
		config.close()
		# Display the username in the label
		$panelblock/nameLabel2.text = userName
		$panelblock/nameLabel2/namelabel2.text = userName
		print("Name Showed - 2")

func _on_levels_pressed() -> void:
	$'%PrutasAtGulay'.show()
	print('Go to Level Selection')
	
func _on_home_pressed() -> void:
	var home = get_tree().change_scene("res://Scenes/MainMenu.tscn")
	print("To Main Menu")
	
func _on_nextQuestion_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.12), "timeout")
	var nextQ = get_tree().change_scene("res://Levels/1PrutasAtGulay/Level2/2ndQuestion/Level_2.tscn")
	#$'%PrutasAtGulay'.show()
	print("Next Question")
	
