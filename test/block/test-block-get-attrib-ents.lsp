;;; test-block-get-attrib-ents.lsp - block:get-attrib-ents 测试
(defun test:block-get-attrib-ents ()
  (test:suite 'block)
  (test:add-case 'block 'get-attrib-ents '((lambda () (block:get-attrib-ents))) nil)
  (test:run-all))
(test:block-get-attrib-ents)
