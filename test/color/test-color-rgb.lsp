; test-color-rgb.lsp - color:rgb 函数测试
(load "src/fun/test-framework")
(load "src/color/rgb")

(test:suite 'color-rgb)

(test:add-case 'color-rgb 'test-red-int
  '((lambda () (color:rgb 255 0 0)))
  255)

(test:add-case 'color-rgb 'test-green-int
  '((lambda () (color:rgb 0 255 0)))
  65280)

(test:add-case 'color-rgb 'test-blue-int
  '((lambda () (color:rgb 0 0 255)))
  16711680)

(test:add-case 'color-rgb 'test-white
  '((lambda () (color:rgb 255 255 255)))
  16777215)

(test:add-case 'color-rgb 'test-float
  '((lambda () (color:rgb 0.999 0 0)))
  255)

(test:run-all)