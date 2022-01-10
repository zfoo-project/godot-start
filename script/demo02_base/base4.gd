extends Node2D


func _ready():
	createNodeByScript()
	pass
	
	
func createNodeByScript():
	# new一个Sprite节点
	var sprite = Sprite.new()
	
	# 设置图片
	var icon = preload("res://icon.png")
	sprite.set_texture(icon)
	
	# 修改名称
	sprite.name = "mynode"
	
	# 修改坐标居中
	sprite.position.x = 200
	sprite.position.y = 200
	
	# 添加到当前的场景中
	add_child(sprite)
	pass # Replace with function body.	



func _process(delta):
	var sprite = $mynode
	sprite.rotate(0.1)
	pass
