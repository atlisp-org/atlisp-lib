;;; test-block-list-blk-objs.lsp - block:list-blk-objs 测试
(defun test:block-list-blk-objs ()
  (test:suite 'block)
  (test:add-case 'block 'list-blk-objs '((lambda () (block:list-blk-objs))) nil)
  (test:run-all))
(test:block-list-blk-objs)
