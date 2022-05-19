(defun example:multi-platform (/ *error*)
  "多平台开发示例，如果你希望你的代码能在多种CAD平台（如autocad,浩辰CAD,中望CAD等）上运行。因为兼容性问题，需要处理一些特殊的代码段。以适应不同的平台"
  ""
  ""
  "@lisp 提供简单的解决方案，代码如下。"
  (cond (is-gcad "这里编写浩辰CAD的处理过程"
      (alert "这是浩辰CAD")
      (cond ((= "R21.2"
            (getvar "gcadver"))
          "浩辰不同版本的区别处理"
          (alert "这是浩辰CAD-v1"))
        ((= "R20.1"
            (getvar "gcadver"))
          "浩辰不同版本的区别处理"
          (alert "这是浩辰CAD-v2"))))
    (is-zwcad "这里编写中望CAD的处理过程"
      (alert "这是中望CAD"))
    (t "AutoCAD 的处理过程"
      (alert "这是AutoCAD"))))
