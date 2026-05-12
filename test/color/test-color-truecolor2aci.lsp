; test-color-truecolor2aci.lsp - color:truecolor2aci 函数测试
(load "src/fun/test-framework")
(load "src/color/truecolor2aci")

(test:suite 'color-truecolor2aci)

(test:add-case 'color-truecolor2aci 'test-red
  '((lambda () (color:truecolor2aci 255)))
  1)

(test:add-case 'color-truecolor2aci 'test-example
  '((lambda () (color:truecolor2aci 2076128)))
  142)

(test:run-all)