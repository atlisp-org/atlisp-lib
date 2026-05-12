; test-m-symmetric-difference.lsp - m:symmetric-difference 函数测试
(load "src/fun/test-framework")
(load "src/m/symmetric-difference")

(test:suite 'm-symmetric-difference)

(test:add-case 'm-symmetric-difference 'test-12-23
  '((lambda () (m:symmetric-difference '(1 2) '(2 3))))
  '(1 3))

(test:add-case 'm-symmetric-difference 'test-empty
  '((lambda () (m:symmetric-difference '(1 2 3) '(1 2 3))))
  nil)

(test:add-case 'm-symmetric-difference 'test-no-intersection
  '((lambda () (m:symmetric-difference '(1 2) '(3 4))))
  '(1 2 3 4))

(test:run-all)