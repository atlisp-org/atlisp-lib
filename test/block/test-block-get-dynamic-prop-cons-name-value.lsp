;;; test-block-get-dynamic-prop-cons-name-value.lsp - block:get-dynamic-prop-cons-name-value 测试
(defun test:block-get-dynamic-prop-cons-name-value ()
  (test:suite 'block)
  (test:add-case 'block 'get-dynamic-prop-cons-name-value '((lambda () (block:get-dynamic-prop-cons-name-value))) nil)
  (test:run-all))
(test:block-get-dynamic-prop-cons-name-value)
