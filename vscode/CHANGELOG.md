# Change Log
@lisp 函数库更新日志

## 1.2.8
- 悬停支持 基本函数 visuallisp 函数，vlr函数 和 自解析符号(参数)
## 1.2.6
- 支持 @lisp函数的悬停提示
## 1.2.3
- 新增系统变量 补全与提示
## 1.2.2
- snippets 加入 vlr 自解析符号。
## 1.2.0
- 尽量使用系统配色。
- visuallisp 中对象属性支持 vla-get-* vla-put-* 和'property 写法统一着色 
- visuallisp 中对象方法支持 vla-* 和 'method 写法统一着色
- dxf 组码的提示和便捷输入。 
## 1.1.37
- 支持 visuallisp的配色方案：红色（淡蓝)为方法 绿色（紫色）为属性，蓝色为函数，支持两种写法
```
  (vlax-invoke obj  'Activate)
  (vla-activate obj)
  (vlax-get obj 'ActiveDocument)
  (vla-get-activedocument obj)
```
## 1.1.36
- 根据默认配色 添加 属性 方法，及外部函数色彩, 感谢 remember 提出宝贵意见。
## 1.1.33
- 更正 snippets 中符号间距为两个空格的问题
- 优化 自动完成信息
## 1.1.28
- QQ群,微信公众号
## 1.1.25
- 更正 readme 中的拼写错误
## 1.1.23
- 新增 DXF 查询，输入dxf+数字，或 dxf+图元名,如 dxf-3 , dxf8 ,dclcircle 可查看 dxf 组码说明，并输入组码点对。
- 输入 dxfcommon 可以查看图元通用组码，但是输入是无效的。
## 1.1.17
- DCL 相关提示,自动完成与高亮
## 1.1.15
- 更新说明
## 1.1.13
- 新增扩展关键字
## 1.1.12
- 配色方案,一般字体，关闭粗体。
## 1.1.10
- 配色方案
## 1.1.9
- 新增明暗两个主题
## 1.1.8 
- @lisp函数 语法高亮。
## 1.1.5
- @lisp函数语法说明中，返回值换行。
## 1.1.4
- 更新 README
- autlisp基本函数
- vla-get-* vla-put-* vla-* 系列属性和方法
- vlr 系列反应器函数
- @lisp 函数
## 1.1.3
- 加入反应器函数支持
## 1.1.1
- 欢迎捐赠以支持我们的项目，您的支持是我们前进的动力
## 1.1.0
- 加入 visuallisp 相关属性和方法
## 1.0.3
- 更正 issue 网址
## v1.0.1
- 测试升级版本，下一版本加入 vla-* 相关函数。
## v1.0.0
- 发布至 vscode Marketplace
## v0.1.8
- 提示信息更紧凑
## v0.1.7
- 支持 autolisp 基本函数

