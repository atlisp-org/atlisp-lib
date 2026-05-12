; test-m-coord-chg.lsp - m:coord-chg 函数测试
(load "src/fun/test-framework")
(load "src/m/coord-chg")

(test:suite 'm-coord-chg)

(test:add-case 'm-coord-chg 'test-basic
  '((lambda () (m:coord-chg '(10 0 0) '(0 0 0) '(1 0))))
  nil)

(test:run-all)