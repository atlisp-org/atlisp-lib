; test-m-arcosh.lsp - m:arcosh 函数测试
(load "src/fun/test-framework")
(load "src/m/arcosh")

(test:suite 'm-arcosh)

(test:add-case 'm-arcosh 'test-1
  '((lambda () (m:arcosh 1.0)))
  0.0)

(test:add-case 'm-arcosh 'test-2
  '((lambda () (m:arcosh 2.0)))
  1.3169578969)

(test:add-case 'm-arcosh 'test-1-5
  '((lambda () (m:arcosh 1.5)))
  0.9624236502)

(test:run-all)