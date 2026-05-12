;;; test-block-list-xref-objs.lsp - block:list-xref-objs 测试
(defun test:block-list-xref-objs ()
  (test:suite 'block)
  (test:add-case 'block 'list-xref-objs '((lambda () (block:list-xref-objs))) nil)
  (test:run-all))
(test:block-list-xref-objs)
