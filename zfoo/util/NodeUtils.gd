extends Object


static func removeNode(node: Node) -> void:
	if (node == null):
		return
	var parent = node.get_parent()
	if (parent == null):
		return
	parent.remove_child(node)
	node.queue_free()
	
