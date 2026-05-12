; test-color-truecolor2rgb.lsp - color:truecolor2rgb 函数测试
(load "src/fun/test-framework")
(load "src/color/truecolor2rgb")

(test:suite 'color-truecolor2rgb)

(test:add-case 'color-truecolor2rgb 'test-red
  '((lambda () (color:truecolor2rgb 255)))
  '(255 0 0))

(test:add-case 'color-truecolor2rgb 'test-green
  '((lambda () (color:truecolor2rgb 65280)))
  '(0 255 0))

(test:add-case 'color-truecolor2rgb 'test-blue
  '((lambda () (color:truecolor2rgb 16711680)))
  '(0 0 255))

(test:run-all)