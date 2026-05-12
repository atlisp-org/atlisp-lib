; test-string-sort-by-number.lsp - string:sort-by-number 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/sort-by-number")

(test:suite 'string-sort-by-number)

(test:add-case 'string-sort-by-number 'test-sort-by-number-basic
  '((lambda () (string:sort-by-number '("a5" "a1" "a13"))))
  '("a1" "a5" "a13"))

(test:add-case 'string-sort-by-number 'test-sort-by-number-mixed
  '((lambda () (string:sort-by-number '("b2" "a1" "b1" "a2"))))
  '("a1" "a2" "b1" "b2"))

(test:add-case 'string-sort-by-number 'test-sort-by-number-single
  '((lambda () (string:sort-by-number '("a10"))))
  '("a10"))

(test:add-case 'string-sort-by-number 'test-sort-by-number-desc
  '((lambda () (string:sort-by-number '("a3" "a1" "a2"))))
  '("a1" "a2" "a3"))

(test:run-all)