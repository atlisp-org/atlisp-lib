; test-m-radions2degress.lsp - m:radions2degress 函数测试
(load "src/fun/test-framework")
(load "src/m/radions2degress")

(test:suite 'm-radions2degress)

(test:add-case 'm-radions2degress 'test-pi
  '((lambda () (m:radions->degress pi)))
  180.0)

(test:add-case 'm-radions2degress 'test-half-pi
  '((lambda () (m:radions->degress (* 0.5 pi))))
  90.0)

(test:add-case 'm-radions2degress 'test-quarter-pi
  '((lambda () (m:radions->degress (* 0.25 pi))))
  45.0)

(test:add-case 'm-radions2degress 'test-0
  '((lambda () (m:radions->degress 0.0)))
  0.0)

(test:run-all)