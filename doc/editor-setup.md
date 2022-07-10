# godot 可以调用外部的IDE进行脚本的编辑，这里记录一下相关的配置

- 工欲善其事必先利其器，一款好用的编辑器可以极大的提高开发效率
- Godot 自带的代码编辑器对于代码提示使用起来比较难受、经常出现打完后不提示或者提示错误的情况，极度的不智能。
- 恰好官方就支持 VSCode 作为第三方编辑器，而且支持 Debug 调试功能，这里记录一下配置流程。

- 官方的Godot Tools插件支持断点调试，智能补全，文档查看等非常多的功能，支持比较全面

- 进入 Editor - EditorSetting - Text Editor - External，配置好 “Exec Path” 和 “Exec Flags” 后勾选 “Use External Editor”

- vscode 编辑器设置

```
/Programs/Microsoft VS Code/Code.exe
{project} --goto {file}:{line}:{col}
```

- idea 编辑器设置

```
C:/Program Files/JetBrains/IntelliJ
{project} {file}:{line}
```
