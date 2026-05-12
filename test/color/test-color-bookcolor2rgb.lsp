; test-color-bookcolor2rgb.lsp - color:bookcolor2rgb 函数测试
(load "src/fun/test-framework")
(load "src/color/bookcolor2rgb")

(test:suite 'color-bookcolor2rgb)

(test:add-case 'color-bookcolor2rgb 'test-dic
  '((lambda () (color:bookcolor2rgb "DIC COLOR GUIDE(R)$DIC 4")))
  '(0 0 0))

(test:run-all)