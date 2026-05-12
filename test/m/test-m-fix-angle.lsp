; test-m-fix-angle.lsp - m:fix-angle 函数测试
(load "src/fun/test-framework")
(load "src/m/fix-angle")

(test:suite 'm-fix-angle)

(test:add-case 'm-fix-angle 'test-pi
  '((lambda () (m:fix-angle pi)))
  3.1415926536)

(test:add-case 'm-fix-angle 'test-negative
  '((lambda () (m:fix-angle -0.5)))
  nil)

(test:add-case 'm-fix-angle 'test-large
  '((lambda () (m:fix-angle (* 3 pi))))
  nil)

(test:add-case 'm-fix-angle 'test-0
  '((lambda () (m:fix-angle 0.0)))
  0.0)

(test:run-all)