# godot 可以调用外部的IDE进行脚本的编辑，这里记录一下相关的配置

- Godot 做开发的时候发现 Godot 原生编码环境对于代码提示、字段补全等功能经常时令时不灵，而且提示机制很迷，经常出现打完后不提示或者提示错误的情况，极度的不智能。
- 恰好官方就支持 VSCode 作为第三方编辑器，而且支持 Debug 调试功能，这里记录一下配置流程。
  
- 进入 Editor - EditorSetting - Text Editor - External，配置好 “Exec Path” 和 “Exec Flags” 后勾选 “Use External Editor”

- vscode 编辑器设置

```
Editor中设置Text Editor -> External
/Programs/Microsoft VS Code/Code.exe
{project} --goto {file}:{line}:{col}
```

- idea 编辑器设置

```
Editor中设置Text Editor -> External
C:/Program Files/JetBrains/IntelliJ
{project} {file}:{line}
```
