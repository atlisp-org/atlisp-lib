;;; test-file-read-stream.lsp - file:read-stream 测试
(defun test:file-read-stream ()
  (test:suite 'file)
  (test:add-case 'file 'read-stream '((lambda () (vl-catch-all-apply 'file:read-stream (list)))) nil)
  (test:run-all))
(test:file-read-stream)
