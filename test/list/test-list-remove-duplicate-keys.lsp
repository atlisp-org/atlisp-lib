; test-list-remove-duplicate-keys.lsp - list:remove-duplicate-keys 函数测试
(load "src/fun/test-framework")
(load "src/list/remove-duplicate-keys")

(test:suite 'list-remove-duplicate-keys)

(test:add-case 'list-remove-duplicate-keys 'test-remove-duplicate-keys-1
  '((lambda () (list:remove-duplicate-keys '((1 11) (2 22) (1 33) (3 44)))))
  '((1 11) (2 22) (3 44)))

(test:add-case 'list-remove-duplicate-keys 'test-remove-duplicate-keys-2
  '((lambda () (list:remove-duplicate-keys '((a 1) (b 2) (c 3)))))
  '((a 1) (b 2) (c 3)))

(test:add-case 'list-remove-duplicate-keys 'test-remove-duplicate-keys-3
  '((lambda () (list:remove-duplicate-keys '((x 10) (x 20) (y 30)))))
  '((x 10) (y 30)))

(test:add-case 'list-remove-duplicate-keys 'test-remove-duplicate-keys-4
  '((lambda () (list:remove-duplicate-keys nil)))
  nil)

(test:run-all)