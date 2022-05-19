(defun example:error-exit (para / *error*)
  "函数错误处理方案示例 *error* 定义私有函数，隔绝公共域 *error* ，使之不用重定义。\n参数 para .为 t 时执行正常流程，为 nil 时，执行错误处理流程。"
  ""
  "(example:error-exit nil)"
  (defun *error* (msg)
    "当异常退出时，正常流程没有关闭文件指针，在这里关闭"
    (if (= (quote file)
        (type fp))
      (progn (princ "关闭出错时的文件句本柄。\n")
        (close fp)))
    (princ "当异常退出时，设置的变量没有恢复，在这里恢复")
    (pop-var)
    (princ "显示恢复的变量值：")
    (princ (getvar "osmode"))
    (princ "\n")
    "以上为你专用的处理过程"
    "下面是 @lisp 常用错误处理过程"
    (@:*error* msg)
    (princ))
  "设置当前运行的函数名，当出错时给出信息。"
  (setq *funname* (quote example:error-exit))
  (princ "显示变量原值：")
  (princ (getvar "osmode"))
  (princ "\n")
  (push-var)
  "修改变量"
  (setvar "osmode"
    0)
  (princ "显示修改后的变量值：")
  (princ (getvar "osmode"))
  (princ "\n")
  (setq fp (open (findfile "acad.pgp")
      "r"))
  (read-line fp)
  (if (null para)
    (progn "这是一个未定义的函数。在这里异常退出."
      (mmma)))
  (princ "正常的流程,关闭文件句柄，恢复变量。")
  (close fp)
  (pop-var)
  (princ "显示恢复的变量值：")
  (princ (getvar "osmode"))
  (princ "\n")
  (princ))
