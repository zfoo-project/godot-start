extends Node2D


# Declare member variables here. Examples:
export var a = 1
export var b:NodePath
export(NodePath) var c
export(String, FILE) var e 
export(String, FILE, "*.txt") var d
export(Resource) var f
export(Color, RGB) var g

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


