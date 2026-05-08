; m: 数学函数测试用例

(test:suite 'math-func)

; m:factorial 测试 - 阶乘 (近似值)
(test:add-case 'math-func 'factorial-5
  '((lambda () (m:factorial 5)))
  120.0)

(test:add-case 'math-func 'factorial-10
  '((lambda () (m:factorial 10)))
  3628800.0)

; m:evenp 测试 - 偶数判断
(test:add-case 'math-func 'evenp-true
  '((lambda () (m:evenp 4)))
  t)

(test:add-case 'math-func 'evenp-false
  '((lambda () (m:evenp 5)))
  nil)

(test:add-case 'math-func 'evenp-zero
  '((lambda () (m:evenp 0)))
  t)

(test:add-case 'math-func 'evenp-negative
  '((lambda () (m:evenp -2)))
  t)

(test:add-case 'math-func 'evenp-negative-odd
  '((lambda () (m:evenp -3)))
  nil)

; m:azimuth 测试 - 方位角
(test:add-case 'math-func 'azimuth-basic
  '((lambda () (m:azimuth '(0 0) '(1 1))))
  45.0)

(test:add-case 'math-func 'azimuth-east
  '((lambda () (m:azimuth '(0 0) '(1 0))))
  0.0)

(test:add-case 'math-func 'azimuth-south
  '((lambda () (m:azimuth '(0 0) '(0 -1))))
  180.0)

; m:base2dec 测试 - 进制转换
(test:add-case 'math-func 'base2dec-binary
  '((lambda () (m:base2dec "1010" 2)))
  10)

(test:add-case 'math-func 'base2dec-hex
  '((lambda () (m:base2dec "FF" 16)))
  255)

(test:add-case 'math-func 'base2dec-octal
  '((lambda () (m:base2dec "77" 8)))
  63)

; m:dec2hex 测试
(test:add-case 'math-func 'dec2hex
  '((lambda () (m:dec2hex 255)))
  "FF")

(test:add-case 'math-func 'dec2hex-10
  '((lambda () (m:dec2hex 10)))
  "A")

; m:asin 测试
(test:add-case 'math-func 'asin-0
  '((lambda () (m:asin 0)))
  0.0)

(test:add-case 'math-func 'asin-1
  '((lambda () (m:asin 1)))
  1.570796)

; m:acos 测试
(test:add-case 'math-func 'acos-0
  '((lambda () (m:acos 0)))
  1.570796)

(test:add-case 'math-func 'acos-1
  '((lambda () (m:acos 1)))
  0.0)

(test:run-all)