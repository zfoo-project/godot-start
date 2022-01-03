# 1. 内存管理free

- godot中的对象分为两种
    - 引用计数对象，继承于Reference，当没有引用时会被自动回收
    - 非引用计数对象，没有继承于Reference，自能自己手动回收,free或queue_free

![Image text](image/gc.JPG)

# 2. 垃圾回收的缺点

![Image text](image/gc1.png)
![Image text](image/gc2.png)
![Image text](image/gc3.png)

# 3. 引用计数

- 可以使用unreference去释放引用计数的对象

- 引用计数既保留了性能，也保证了更加高效的性能
  ![Image text](image/太极.png)
