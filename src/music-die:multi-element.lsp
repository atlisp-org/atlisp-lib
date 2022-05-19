(defun music-die:multi-element (element num / element-list)
  "\n使某个lisp元素出现以列表形式存储多份\nELEMENT 元素  num 存储份数\n作者：MUSIC-DIE\n"
  "\n返回值：（list element elemen element element ...）\n"
  "(Multi-element 123 3)
  --> '(123 123 123)"
  (repeat num (setq element-list (cons element element-list))))
