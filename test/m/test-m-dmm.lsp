; test-m-dmm.lsp - m:dmm 函数测试
(load "src/fun/test-framework")
(load "src/m/dmm")

(test:suite 'm-dmm)

(test:add-case 'm-dmm 'test-pi-4
  '((lambda () (m:dmm (* 0.25 pi))))
  nil)

(test:add-case 'm-dmm 'test-half-pi
  '((lambda () (m:dmm (* 0.5 pi))))
  nil)

(test:add-case 'm-dmm 'test-zero
  '((lambda () (m:dmm 0)))
  nil)

(test:run-all)