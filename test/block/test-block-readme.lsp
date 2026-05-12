;;; test-block-readme.lsp - block:readme 测试
(defun test:block-readme ()
  (test:suite 'block)
  (test:add-case 'block 'readme '((lambda () (block:readme))) nil)
  (test:run-all))
(test:block-readme)
