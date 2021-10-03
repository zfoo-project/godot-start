extends Sprite


var gameWidth: int
var gameHeight: int
var spriteWidth: int
var spriteHeight: int
	
func _physics_process(delta):
	setupSprite()
	setupGameWindow()	
	positionTopCenter()

func setupSprite():
	spriteWidth = texture.get_width()
	spriteHeight = texture.get_height()

func setupGameWindow():
	gameWidth = OS.window_size.x
	gameHeight = OS.window_size.y
	
func positionTopCenter() -> void:
	self.position.x = gameWidth / 2
	self.position.y = spriteHeight / 2

func positionCenter() -> void:
	self.position.x = gameWidth / 2
	self.position.y = gameHeight / 2

func positionBottomCenter() -> void:
	self.position.x = gameWidth / 2
	self.position.y = gameHeight - spriteHeight / 2

func positionLeftCenter() -> void:
	self.position.x = spriteWidth / 2
	self.position.y = gameHeight / 2
