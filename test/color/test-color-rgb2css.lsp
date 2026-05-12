; test-color-rgb2css.lsp - color:rgb2css 函数测试
(load "src/fun/test-framework")
(load "src/color/rgb2css")

(test:suite 'color-rgb2css)

(test:add-case 'color-rgb2css 'test-red
  '((lambda () (color:rgb2css '(255 0 0))))
  "#ff0000")

(test:add-case 'color-rgb2css 'test-green
  '((lambda () (color:rgb2css '(0 255 0))))
  "#00ff00")

(test:add-case 'color-rgb2css 'test-blue
  '((lambda () (color:rgb2css '(0 0 255))))
  "#0000ff")

(test:add-case 'color-rgb2css 'test-white
  '((lambda () (color:rgb2css '(255 255 255))))
  "#ffffff")

(test:run-all)