; test-color-aci2rgb.lsp - color:aci2rgb 函数测试
(load "src/fun/test-framework")
(load "src/color/aci2rgb")

(test:suite 'color-aci2rgb)

(test:add-case 'color-aci2rgb 'test-1
  '((lambda () (color:aci2rgb 1)))
  '(255 0 0))

(test:add-case 'color-aci2rgb 'test-2
  '((lambda () (color:aci2rgb 2)))
  '(255 255 0))

(test:add-case 'color-aci2rgb 'test-3
  '((lambda () (color:aci2rgb 3)))
  '(0 255 0))

(test:add-case 'color-aci2rgb 'test-7
  '((lambda () (color:aci2rgb 7)))
  '(255 255 255))

(test:add-case 'color-aci2rgb 'test-out-of-range
  '((lambda () (color:aci2rgb 300)))
  '(0 0 0))

(test:run-all)