---
typora-copy-images-to: images
---

**“纸上得来终觉浅，绝知此事要躬行。”  —— 陆游**

**"Practice，practice，practice and summary makes perfect" —— dyliuti**

------



<br>

**运行说明：**

用例文件为纯QML文件，需要下载[Ninja-preview](https://github.com/amoh-godwin/Ninja-Preview/releases)安装后拖到到里面进行执行。不推荐命令行操作。

<br>

**程序说明：**

用例文件为纯QML文件，布局也较简单，最上面查询框和下面的日期都是Rectangle，日期下面是ListView，最下面的添加新任务是Button。复杂点的是ListView的每项都做了动态代理。从第二张图中可以看到，ListView中的每项都有三个矩形，圆圈开头的一行是一个，“将做”一行是一个，最下面的四个字体图标也是一个矩形中的。三个矩形在一个ColumnLayout布局中。下面两个矩形通过点击“三点”来进行展开、缩回。此外，“Project：将做”是TextArea，对其cursorDelegate进行了设置，鼠标放在该区域时将变换图形。

“将做”和“计划”是ListElement中的section，对section.delegate进行代理设置的话，相同的section公用一个标题。

可以看到的是，QML做动态代理是非常方便的，不像Cpp，每来一个动态代理需要实现特定的几个函数，而且出UI也没那么直观，那么快。

<br>

**运行结果：**

<img src="C:\Git\QML\images\纯QML.png" alt="纯QML" style="zoom:50%;" />

点击“三个点”展开后如下：

<img src="C:\Git\QML\images\纯QML2.png" alt="纯QML2" style="zoom:50%;" />

