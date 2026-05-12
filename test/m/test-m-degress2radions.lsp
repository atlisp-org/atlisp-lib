; test-m-degress2radions.lsp - m:degress2radions 函数测试
(load "src/fun/test-framework")
(load "src/m/degress2radions")

(test:suite 'm-degress2radions)

(test:add-case 'm-degress2radions 'test-180
  '((lambda () (m:degress->radions 180)))
  3.1415926536)

(test:add-case 'm-degress2radions 'test-90
  '((lambda () (m:degress->radions 90)))
  1.5707963268)

(test:add-case 'm-degress2radions 'test-45
  '((lambda () (m:degress->radions 45)))
  0.7853981634)

(test:add-case 'm-degress2radions 'test-0
  '((lambda () (m:degress->radions 0)))
  0.0)

(test:run-all)