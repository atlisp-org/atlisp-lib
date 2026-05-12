;;; test-block-attach.lsp - block:attach 测试
(defun test:block-attach ()
  (test:suite 'block)
  (test:add-case 'block 'attach '((lambda () (block:attach))) nil)
  (test:run-all))
(test:block-attach)
