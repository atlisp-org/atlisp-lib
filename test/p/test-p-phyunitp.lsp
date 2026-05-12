; test-p-phyunitp.lsp - p:phyunitp 函数测试
(load "src/fun/test-framework")
(load "src/p/phyunitp")

(test:suite 'p-phyunitp)

(test:add-case 'p-phyunitp 'test-nil
  '((lambda () (p:phyunitp nil)))
  nil)

(test:add-case 'p-phyunitp 'test-unit
  '((lambda () (p:phyunitp "W/m²·K")))
  t)

(test:add-case 'p-phyunitp 'test-str
  '((lambda () (p:phyunitp "test")))
  nil)

(test:run-all)