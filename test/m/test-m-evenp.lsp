; test-m-evenp.lsp - m:evenp 函数测试
(load "src/fun/test-framework")
(load "src/m/evenp")

(test:suite 'm-evenp)

(test:add-case 'm-evenp 'test-4
  '((lambda () (m:evenp 4)))
  t)

(test:add-case 'm-evenp 'test-5
  '((lambda () (m:evenp 5)))
  nil)

(test:add-case 'm-evenp 'test-0
  '((lambda () (m:evenp 0)))
  t)

(test:add-case 'm-evenp 'test-negative
  '((lambda () (m:evenp -2)))
  t)

(test:run-all)