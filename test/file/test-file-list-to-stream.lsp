;;; test-file-list-to-stream.lsp - file:list-to-stream 测试
(defun test:file-list-to-stream ()
  (test:suite 'file)
  (test:add-case 'file 'list-to-stream '((lambda () (vl-catch-all-apply 'file:list-to-stream (list)))) nil)
  (test:run-all))
(test:file-list-to-stream)
