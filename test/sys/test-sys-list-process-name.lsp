;;; test-sys-list-process-name.lsp - sys:list-process-name 测试
(defun test:sys-list-process-name ()
  (test:suite 'sys)
  (test:add-case 'sys 'list-process-name '((lambda () (vl-catch-all-apply 'sys:list-process-name (list)))) nil)
  (test:run-all))
(test:sys-list-process-name)
