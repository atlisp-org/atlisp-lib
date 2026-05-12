; test-string-num-compare.lsp - string:num-compare 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/num-compare")

(test:suite 'string-num-compare)

(test:add-case 'string-num-compare 'test-num-compare-less
  '((lambda () (string:num-compare "<" "a5" "a13")))
  t)

(test:add-case 'string-num-compare 'test-num-compare-greater
  '((lambda () (string:num-compare ">" "a10" "a2")))
  t)

(test:add-case 'string-num-compare 'test-num-compare-equal
  '((lambda () (string:num-compare "=" "a5" "a5")))
  t)

(test:add-case 'string-num-compare 'test-num-compare-string
  '((lambda () (string:num-compare "<" "abc" "def")))
  t)

(test:run-all)