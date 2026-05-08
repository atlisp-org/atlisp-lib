; string: 函数测试用例

(test:suite 'string-func)

; string:to-list 测试 - 字符串转列表
(test:add-case 'string-func 'to-list-comma
  '((lambda () (string:to-list "a,b,c" ",")))
  '("a" "b" "c"))

(test:add-case 'string-func 'to-list-semicolon
  '((lambda () (string:to-list "1;2;3" ";")))
  '("1" "2" "3"))

(test:add-case 'string-func 'to-list-no-sep
  '((lambda () (string:to-list "abc" "")))
  '("a" "b" "c"))

(test:add-case 'string-func 'to-list-single
  '((lambda () (string:to-list "only" ",")))
  '("only"))

; string:from-list 测试 - 列表转字符串
(test:add-case 'string-func 'from-list
  '((lambda () (string:from-list '("a" "b" "c") ",")))
  "a,b,c")

(test:add-case 'string-func 'from-list-single
  '((lambda () (string:from-list '("only") ",")))
  "only")

(test:add-case 'string-func 'from-list-two
  '((lambda () (string:from-list '("a" "b") "-")))
  "a-b")

; string:length 测试
(test:add-case 'string-func 'length
  '((lambda () (string:length "hello")))
  5)

(test:add-case 'string-func 'length-chinese
  '((lambda () (string:length "你好")))
  2)

; string:trim-space 测试
(test:add-case 'string-func 'trim-space
  '((lambda () (string:trim-space "  hello  ")))
  "hello")

(test:add-case 'string-func 'trim-space-no-space
  '((lambda () (string:trim-space "hello")))
  "hello")

(test:run-all)