;;; test-sys-list-process.lsp - sys:list-process 测试
(defun test:sys-list-process ()
  (test:suite 'sys)
  (test:add-case 'sys 'list-process '((lambda () (vl-catch-all-apply 'sys:list-process (list)))) nil)
  (test:run-all))
(test:sys-list-process)
