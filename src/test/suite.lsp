(defun test:suite (name)
  "创建测试套件"
  "参数: name - 套件名称（符号）"
  "返回: list - 新创建的套件，包含该套件的所有测试信息"
  "示例: (test:suite 'math)"
  (if (not (member name (mapcar 'car *test-suite*)))
      (progn
        (setq *test-suite* (cons (list name) *test-suite*))))
  (assoc name *test-suite*))
