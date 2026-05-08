; p: 谓词函数测试用例

(test:suite 'predicate)

; p:vlap 测试 - 判断是否 vla 对象
; 注意: 在 CAD 环境外无法创建真正的 vla 对象，这里测试非 vla 对象
(test:add-case 'predicate 'vlap-nil
  '((lambda () (p:vlap nil)))
  nil)

(test:add-case 'predicate 'vlap-integer
  '((lambda () (p:vlap 123)))
  nil)

(test:add-case 'predicate 'vlap-string
  '((lambda () (p:vlap "test")))
  nil)

(test:add-case 'predicate 'vlap-list
  '((lambda () (p:vlap '(1 2 3))))
  nil)

; p:enamep 测试 - 判断是否图元
(test:add-case 'predicate 'enamep-nil
  '((lambda () (p:enamep nil)))
  nil)

(test:add-case 'predicate 'enamep-integer
  '((lambda () (p:enamep 123)))
  nil)

(test:add-case 'predicate 'enamep-string
  '((lambda () (p:enamep "test")))
  nil)

(test:add-case 'predicate 'enamep-list
  '((lambda () (p:enamep '(1 2 3))))
  nil)

(test:run-all)