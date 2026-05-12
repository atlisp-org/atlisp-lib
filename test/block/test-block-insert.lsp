;;; test-block-insert.lsp - block:insert 测试
(defun test:block-insert ()
  (test:suite 'block)
  (test:add-case 'block 'insert '((lambda () (block:insert))) nil)
  (test:run-all))
(test:block-insert)
