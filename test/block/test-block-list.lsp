;;; test-block-list.lsp - block:list 测试
(defun test:block-list ()
  (test:suite 'block)
  (test:add-case 'block 'list '((lambda () (block:list))) nil)
  (test:run-all))
(test:block-list)
