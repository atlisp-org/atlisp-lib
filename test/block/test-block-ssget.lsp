;;; test-block-ssget.lsp - block:ssget 测试
(defun test:block-ssget ()
  (test:suite 'block)
  (test:add-case 'block 'ssget '((lambda () (block:ssget))) nil)
  (test:run-all))
(test:block-ssget)
