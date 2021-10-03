extends Node2D

# Declare member variables here. Examples:
export var a = 1
export var b:NodePath
export(NodePath) var c
export(String, FILE) var e 
export(String, FILE, "*.txt") var d
export(Resource) var f
export(Color, RGB) var g
var arr = []
# Called when the node enters the scene tree for the first time.
func _ready():
	print("new一个对象--------------------------------")
	var myClass = MyClass.new()
	print(myClass.to_string())
	
	print("类型信息--------------------------------")
	myClass.typeInfo()
	
	print("基础语法--------------------------------")
	myClass.some_function(1, 2)
	
	print("访问静态变量--------------------------------")
	var answer = MyClass.ANSWER
	print("访问const变量，类似于static变量：" + answer as String)
	
	print("调用静态方法--------------------------------")
	print("调用静态方法：" + MyClass.getAnswer() as String)
	
	print("数组遍历--------------------------------")	
	myClass.arrayIterator()
	print("字典遍历--------------------------------")	
	myClass.dictionaryIterator()

	print("内部类测试--------------------------------")
	myClass.innerClassTest()

	print("垃圾回收--------------------------------")
	# 如果一个类没有指明继承哪个类，则默认继承Reference（可以被自动的垃圾回收，类似其他语言的那种垃圾回收），非常重要的知识点
	for i in range(10000):
		var instance = MyClass.new()
		arr.append(instance)
		# instance.unreference()
		# 立即释放对象
		# instance.free()
		# 放在队列里，等系统统一释放对象，推荐
		# instance.queue_free()
	print("立即输出数组的第一位内容：")
	var firstElement = arr[0]
	print(arr[0])

var frame = 0
func _process(delta):
	frame = frame + 1
	if frame == 300:
		print("等待一会数组的第一位内容")
		arr[0].typeInfo()
		print(typeof(arr[0]))
