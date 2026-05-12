;;; test-block-get-clip-boundary.lsp - block:get-clip-boundary 测试
(defun test:block-get-clip-boundary ()
  (test:suite 'block)
  (test:add-case 'block 'get-clip-boundary '((lambda () (block:get-clip-boundary))) nil)
  (test:run-all))
(test:block-get-clip-boundary)
