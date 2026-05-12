; test-m-calheight.lsp - m:calheight 函数测试
(load "src/fun/test-framework")
(load "src/m/calheight")

(test:suite 'm-calheight)

(test:add-case 'm-calheight 'test-basic
  '((lambda () (m:calheight '(0 0 10) '(10 0 20) 0.5)))
  nil)

(test:run-all)