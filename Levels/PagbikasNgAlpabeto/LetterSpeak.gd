extends Control


#THIS IS FOR THE SCROLL EFFECTS
var scrollerContainer: ScrollContainer
var targetScroll = 0.0
var scrollStep = 600
var scrollWeight = 0.5

#signal pressed

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
	#$'%animalsTheme'.stream_paused = true
	print("Going to Topic Selector")
	


#THIS HERE IS FOR THE BUTTONS
#LETTERS A-G
func _on_ag_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.5), "timeout")
	var levelSelect = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/LevelA-G/LetterA.tscn")
	print("Going to A-G")

#LETTERS H-N
func _on_hn_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.5), "timeout")
	var levelSelect = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/LevelH-N/LetterH.tscn")
	print("Going to H-N")

#LETTERS O-U
func _on_ou_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.5), "timeout")
	var levelSelect = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/LevelO-U/LetterO.tscn")
	print("Going to O-U")

#LETTERS V-Z
func _on_vz_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.5), "timeout")
	var levelSelect = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/LevelV-Z/LetterV.tscn")
	print("Going to V-Z")

#THIS IS FOR THE ALPHABET SONG------
func _on_alphsong_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.5), "timeout")
	var levelSelect = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/AlphabetSong/AlphaSong.tscn")
	print("Going to Song")
