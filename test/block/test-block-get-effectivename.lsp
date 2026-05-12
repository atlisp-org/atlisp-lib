;;; test-block-get-effectivename.lsp - block:get-effectivename 测试
(defun test:block-get-effectivename ()
  (test:suite 'block)
  (test:add-case 'block 'get-effectivename '((lambda () (block:get-effectivename))) nil)
  (test:run-all))
(test:block-get-effectivename)
