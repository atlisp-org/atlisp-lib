; test-color-rgb2truecolor.lsp - color:rgb2truecolor 函数测试
(load "src/fun/test-framework")
(load "src/color/rgb2truecolor")

(test:suite 'color-rgb2truecolor)

(test:add-case 'color-rgb2truecolor 'test-red
  '((lambda () (color:rgb2truecolor '(255 0 0))))
  255)

(test:add-case 'color-rgb2truecolor 'test-green
  '((lambda () (color:rgb2truecolor '(0 255 0))))
  65280)

(test:add-case 'color-rgb2truecolor 'test-blue
  '((lambda () (color:rgb2truecolor '(0 0 255))))
  16711680)

(test:run-all)