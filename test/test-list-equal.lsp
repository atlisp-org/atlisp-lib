; list:equal 函数测试用例
; 依赖: list:equal, string:format

(test:suite 'list-equal)

; 测试1: 简单数字相等
(test:add-case 'list-equal 'number-equal
  '((lambda () (list:equal 5.3 5.3 0.01)))
  t)

; 测试2: 浮点数在容差范围内
(test:add-case 'list-equal 'float-equal-fuzz
  '((lambda () (list:equal 1.001 1.002 0.01)))
  t)

; 测试3: 浮点数超出容差
(test:add-case 'list-equal 'float-not-equal
  '((lambda () (list:equal 1.001 1.1 0.01)))
  nil)

; 测试4: 简单列表相等
(test:add-case 'list-equal 'simple-list-equal
  '((lambda () (list:equal '(1 2 3) '(1 2 3) 0.001)))
  t)

; 测试5: 列表长度不同
(test:add-case 'list-equal 'list-diff-length
  '((lambda () (list:equal '(1 2) '(1 2 3) 0.001)))
  nil)

; 测试6: 包含浮点数的列表
(test:add-case 'list-equal 'float-list-equal
  '((lambda () (list:equal '(1.001 2.002) '(1.001 2.002) 0.01)))
  t)

; 测试7: 包含浮点数的列表 - 边界值
(test:add-case 'list-equal 'float-list-fuzz-boundary
  '((lambda () (list:equal '(1.005 2.005) '(1.006 2.006) 0.001)))
  nil)

; 测试8: 空列表
(test:add-case 'list-equal 'empty-list
  '((lambda () (list:equal '() '() 0.001)))
  t)

; 测试9: 字符串比较
(test:add-case 'list-equal 'string-equal
  '((lambda () (list:equal "test" "test" 0.001)))
  t)

; 测试10: 嵌套列表
(test:add-case 'list-equal 'nested-list-equal
  '((lambda () (list:equal '((1 2) (3 4)) '((1 2) (3 4)) 0.001)))
  t)

(test:run-all)