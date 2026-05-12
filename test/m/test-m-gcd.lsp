; test-m-gcd.lsp - m:gcd 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/m/gcd")

(test:suite 'm-gcd)

; 测试1: 正常情况 - 12 和 8 的最大公约数是 4
(test:add-case 'm-gcd 'test-12-8
  '((lambda () (m:gcd 12 8)))
  4)

; 测试2: 正常情况 - 18 和 24 的最大公约数是 6
(test:add-case 'm-gcd 'test-18-24
  '((lambda () (m:gcd 18 24)))
  6)

; 测试3: 互质数 - 7 和 13 的最大公约数是 1
(test:add-case 'm-gcd 'test-coprime
  '((lambda () (m:gcd 7 13)))
  1)

; 测试4: 一数为0 - 返回 nil
(test:add-case 'm-gcd 'test-zero-a
  '((lambda () (m:gcd 0 8)))
  nil)

; 测试5: 另一数为0 - 返回 nil
(test:add-case 'm-gcd 'test-zero-b
  '((lambda () (m:gcd 12 0)))
  nil)

; 测试6: 负数处理
(test:add-case 'm-gcd 'test-negative
  '((lambda () (m:gcd -12 8)))
  4)

; 测试7: 相等数 - 5 和 5 的最大公约数是 5
(test:add-case 'm-gcd 'test-equal
  '((lambda () (m:gcd 5 5)))
  5)

; 测试8: 大数 - 100 和 75 的最大公约数是 25
(test:add-case 'm-gcd 'test-large
  '((lambda () (m:gcd 100 75)))
  25)

(test:run-all)