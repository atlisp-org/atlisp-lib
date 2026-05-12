; test-m-cal.lsp - m:cal 函数测试
(load "src/fun/test-framework")
(load "src/m/cal")

(test:suite 'm-cal)

(test:add-case 'm-cal 'test-add
  '((lambda () (m:cal '(a b) '(1 2) "a+b")))
  nil)

(test:add-case 'm-cal 'test-multiply
  '((lambda () (m:cal '(x y) '(3 4) "x*y")))
  nil)

(test:run-all)