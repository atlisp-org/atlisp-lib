# @lisp函数库

@lisp 函数库是一个开源、共享、可云端加载的 autolisp 函数库。由像您一样热爱开源共享的爱好者所构筑并维护。可依据开放许可协议自由使用。

@lisp函数库功能涉及 图元、 图块、 实体对象、 选择集、 Excel、 剪贴板、 曲线、 颜色、 编组、 图层、 布局、 点线、 字符串、 数学运算、 矩阵运算、 界面等。更多内容持续迭代中.

@lisp 可运行于 AutoCAD,浩辰CAD,中望CAD 以及 BricsCAD等多种兼容 autolisp/visuallisp 的CAD平台。

## vscode 扩展
### 语法提示与自动补全
Autolisp:
- autolisp基本函数
- vla-get-* vla-put-* vla-* 系列属性和方法
- vlr 系列反应器函数
- @lisp 函数
- DXF 查询，输入dxf+数字，或 dxf+图元名,如 dxf-3 , dxf8 ,dclcircle 可查看 dxf 组码说明，并输入组码点对。
  输入 dxfcommon 可查看图元通用组码

DCL:
- DCL 框件与属性

### 配色与主题
- 提供明暗两个配色主题
- 支持 基本函数、对象属性、方法，只读变量 ，@lisp库函数 的分色显示。

## 社区驱动
@lisp 函数库是一个多元化的信息分享社区，它充满激情，并且每天都在成长。我们的参与者包括 lisp 程序共享爱好者、lisp开发编程人员、CAD从业人员、服务器维护工程师，以及其他很多各界人士。

## 开放代码
@lisp 函数库是开源代码，只要您表明使用了 @lisp 函数库并承认其贡献者的工作，您就可以使用 @lisp函数库。如果您改变或者使用这些代码，您必须按照相同的版权协议发布结果。@lisp函数库 遵循 MIT 开源协议。

## 法律
此网站和很多其他相关服务已由 @lisp-CAD应用云 正式代表社群运营。使用所有由 @lisp-CAD应用云 运营的服务均需符合我们的可接受使用方针和我们的隐私政策

如果您有许可协议、版权或其他法律问题，请联络@lisp-CAD应用云。

# 安装 @lisp 到 CAD

将以下代码复制到 CAD 命令行内，回车即可开始安装。

(在代码行里用鼠标连续三击全选，然后右键复制或Ctrl+C 。到CAD命令行内,右键粘贴或Ctrl+V)

```
(progn(vl-load-com)(setq s strcat h "http" o(vlax-create-object (s"win"h".win"h"request.5.1"))v vlax-invoke e eval r read)(v o'open "get" (s h"://atlisp.""cn/@"):vlax-true)(v o'send)(v o'WaitforResponse 1000)(e(r(vlax-get o'ResponseText))))
```

安装完成后，即可直接调用 @lisp函数库和管理安装 @lisp应用。

## 更多信息 For more information

开发初期，持续更新中。有问题请及时反馈，万分感谢。

* QQ群：@lisp:CAD应用云 (群号: 1071980591)
* 微信公众号：CAD应用云 (微信号: atlisp)

* https://atlisp.cn
* http://atlisp.org
* https://gitee.com/atlisp
* https://github.com/atlisp-org
