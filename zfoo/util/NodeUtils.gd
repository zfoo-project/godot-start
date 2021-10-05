extends Object


# 移除node节点
static func removeNode(node: Node) -> void:
	if (node == null):
		return
	var parent = node.get_parent()
	if (parent == null):
		node.queue_free()
		return
	parent.remove_child(node)
	node.queue_free()
	


# 实例化场景，并将场景添加到node中
static func addScene(node: Node, scene: PackedScene) -> Node:
	var sceneNode = scene.instance()
	node.add_child(sceneNode)
	return sceneNode
