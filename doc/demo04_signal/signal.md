# 1. 信号signal

- 信号是用来完成模块或功能之间通信的媒介，其实就是约定了一些方法的回调形式

- 设计模式上叫做观察者设计模式

```
1. 观察者和被观察者是抽象耦合的，解耦模块 
2. 建立一套统一的触发机制
```

- Godot引擎官方建议在你的游戏开发中更多的使用信号来完成模块或功能间的通信

- 第一种使用方法

```
# 第一种信号接受方法，通过在场景中配置信号的接收方法
func _on_Button1_pressed():
	print("hello button1")
```

- 第二种使用方法

```
# 第二种信号接受方法，通过代码控制信号的接收，更加的灵活，比较推荐方式
func _ready():
	$Button2.connect("pressed", self, "onButton2")
	
func onButton2():
	print("button2 pressed")
```

# 2. 自定义信号

- 自定义信号

```
signal mySignal(a, b)
```

- 发送信号

```
emit_signal("mySignal", 1, 2)
```

- 解除绑定信号

```
disconnect("mySignal", 1, 2)
```

# 3. 异步回调yield

- yield, to produce a result, answer, or piece of information，立即结束当前函数调用，无需等待
- yield(obj, signal)，函数立即返回，并且保存当前执行的位置和状态
- yield返回GDScriptFunctionState类型对象，类似于Java的CompleteFuture
- resume恢复GDScriptFunctionState保存的调用函数状态

![Image text](image/yield.JPG)