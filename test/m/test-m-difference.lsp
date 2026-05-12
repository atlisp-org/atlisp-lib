; test-m-difference.lsp - m:difference 函数测试
(load "src/fun/test-framework")
(load "src/m/difference")

(test:suite 'm-difference)

(test:add-case 'm-difference 'test-123-23
  '((lambda () (m:difference '(1 2 3) '(2 3))))
  '(1))

(test:add-case 'm-difference 'test-empty
  '((lambda () (m:difference '(1 2 3) '(1 2 3))))
  nil)

(test:add-case 'm-difference 'test-no-intersection
  '((lambda () (m:difference '(1 2 3) '(4 5 6))))
  '(1 2 3))

(test:run-all)