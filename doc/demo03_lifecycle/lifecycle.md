# 1. 场景树

![Image text](image/scene-tree.png)
![Image text](image/场景循环.png)

# 2. 帧率

- 帧率 Framerate ，指画面每秒更新多少次 (FPS, Frames Per Second)

```
比如，
  FPS = 50 , 即每 20ms 秒更新一次
  FPS = 60,  约 16.7ms 秒更新一次

通过代码可以设置，要求 godot 引擎尽量以此帧率运行 ，但实际帧率还是会有偏差
Engine.target_fps = 120
```

![Image text](image/场景帧.png)

- delta time上一帧的间隔

```
匀速移动的优化：
 var step = 0.8f * deltaTime;
其中，
   0.8f  表示每秒位移 0.8 单位
```

![Image text](image/delta.png)
![Image text](image/delta-1.png)

# 3. 节点的生命周期

![Image text](image/godot_process.jpg)
![Image text](image/godot_node.jpg)
![Image text](image/godot_lifecycle.jpg)

# 4. process和physics_process

![Image text](image/process.png)
![Image text](image/process-1.png)
![Image text](image/physics.png)
![Image text](image/physics-1.png)
