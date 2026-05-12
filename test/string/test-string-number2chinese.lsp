; test-string-number2chinese.lsp - string:number2chinese 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/number2chinese")

(test:suite 'string-number2chinese)

(test:add-case 'string-number2chinese 'test-number2chinese-basic
  '((lambda () (string:number2chinese 123)))
  "壹佰贰拾叁")

(test:add-case 'string-number2chinese 'test-number2chinese-small
  '((lambda () (string:number2chinese 5)))
  "伍")

(test:add-case 'string-number2chinese 'test-number2chinese-ten
  '((lambda () (string:number2chinese 10)))
  "壹拾")

(test:add-case 'string-number2chinese 'test-number2chinese-hundred
  '((lambda () (string:number2chinese 100)))
  "壹佰")

(test:run-all)