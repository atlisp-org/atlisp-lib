; test-m-fermat-test.lsp - m:fermat-test 函数测试
(load "src/fun/test-framework")
(load "src/m/fermat-test")

(test:suite 'm-fermat-test)

(test:add-case 'm-fermat-test 'test-7
  '((lambda () (m:fermat-test 7)))
  nil)

(test:add-case 'm-fermat-test 'test-11
  '((lambda () (m:fermat-test 11)))
  nil)

(test:add-case 'm-fermat-test 'test-4
  '((lambda () (m:fermat-test 4)))
  nil)

(test:run-all)