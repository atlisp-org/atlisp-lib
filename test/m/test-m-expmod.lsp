; test-m-expmod.lsp - m:expmod 函数测试
(load "src/fun/test-framework")
(load "src/m/expmod")

(test:suite 'm-expmod)

(test:add-case 'm-expmod 'test-2-10-1000
  '((lambda () (m:expmod 2 10 1000)))
  24)

(test:add-case 'm-expmod 'test-3-5-100
  '((lambda () (m:expmod 3 5 100)))
  43)

(test:add-case 'm-expmod 'test-5-0-100
  '((lambda () (m:expmod 5 0 100)))
  1)

(test:run-all)