; test-m-sinh.lsp - m:sinh 函数测试
(load "src/fun/test-framework")
(load "src/m/sinh")

(test:suite 'm-sinh)

(test:add-case 'm-sinh 'test-0
  '((lambda () (m:sinh 0)))
  0.0)

(test:add-case 'm-sinh 'test-1
  '((lambda () (m:sinh 1)))
  1.1752011936)

(test:add-case 'm-sinh 'test-negative
  '((lambda () (m:sinh -1)))
  -1.1752011936)

(test:add-case 'm-sinh 'test-2
  '((lambda () (m:sinh 2)))
  3.6268604078)

(test:run-all)