(defun list:range (start end step)
  "生成等差数列表，类似python的range()函数.\n参数：start:起始值\n      end:结束值\n      step:等差值"
  "等差数列表"
  "(list:range 1 4 1);; => (1 2 3 4)"
  (if (> start end)
      (quote nil)
    (cons start (list:range (+ start step)
			    end step))))
