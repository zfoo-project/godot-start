extends Node2D

const TimeUtils = preload("res://zfoo/scheduler/TimeUtils.gd")
const FileUtils = preload("res://zfoo/util/FileUtils.gd")


# Dictionary
var content = "hello file!!!"

# path string
var filePath: String = "user://playerData.txt"


func _ready() -> void:
	print("Original Data: ", content)
	self.loadData()
	print("Altered Data: ", content)


func saveData() -> void:

	
	FileUtils.writeStringToFile(filePath, content)


func loadData() -> void:

	content = FileUtils.readFileToString(filePath)


func _notification(what):
	if what == MainLoop.NOTIFICATION_WM_QUIT_REQUEST:
		content = content + TimeUtils.currentTimeMillis() as String
		self.saveData()
		get_tree().quit() # quitting the game
