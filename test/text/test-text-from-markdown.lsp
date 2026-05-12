;;; test-text-from-markdown.lsp - text:from-markdown 测试
(defun test:text-from-markdown ()
  (test:suite 'text)
  (test:add-case 'text 'from-markdown '((lambda () (vl-catch-all-apply 'text:from-markdown (list "test"))) nil)
  (test:run-all))
(test:text-from-markdown)