---
layout:      post
title:       Sublime text 3 中文文件名显示方框解决
category:    blog
description: Sublime text 3 中文文件名显示方框解决以及高分辨率下左侧栏和标签栏字体变小的处理
---

## Sublime text 3 中文文件名显示方框怎么解决？

Preferences，Settings-User，配置中加上："dpi_scale": 1.0

## 高分辨率下左侧栏和标签栏字体变小

* 安装 PackageResourceViewer

```
cd C:\Users\taozy\AppData\Roaming\Sublime Text 3\Packages

git clone https://github.com/taozywu/PackageResourceViewer 

#快捷键 ⌘(command/ctrl)+⇧(shift)+P 打开 Command Palette 输入 PackageResourceViewer: Open Resource 回车，
#打开包列表 选择 Theme - Default，
#再选择 Default.sublimt-theme


//sidebar_label

"font.size": 18

//tab_label

"font.size": 12

//sidebar_tree

"row_padding": [9, 6],

```
