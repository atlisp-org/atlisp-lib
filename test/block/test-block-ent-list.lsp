;;; test-block-ent-list.lsp - block:ent-list 测试
(defun test:block-ent-list ()
  (test:suite 'block)
  (test:add-case 'block 'ent-list '((lambda () (block:ent-list))) nil)
  (test:run-all))
(test:block-ent-list)
