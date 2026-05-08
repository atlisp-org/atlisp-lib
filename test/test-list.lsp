; list: 函数测试用例

(test:suite 'list-func)

; list:split 测试 - 列表切分
(test:add-case 'list-func 'split-3
  '((lambda () (list:split '(1 2 3 4 5 6) 3)))
  '((1 2 3) (4 5 6)))

(test:add-case 'list-func 'split-2
  '((lambda () (list:split '(1 2 3 4 5) 2)))
  '((1 2) (3 4) (5)))

(test:add-case 'list-func 'split-remainder
  '((lambda () (list:split '(1 2 3 4 5 6 7) 3)))
  '((1 2 3) (4 5 6) (7)))

; list:split-3d 测试 - 3D点列表切分
(test:add-case 'list-func 'split-3d-even
  '((lambda () (list:split-3d '(1 2 3 4 5 6))))
  '((1 2 3) (4 5 6)))

(test:add-case 'list-func 'split-3d-odd
  '((lambda () (list:split-3d '(1 2 3 4 5))))
  '((1 2 3) (4 5 nil)))

(test:add-case 'list-func 'split-3d-empty
  '((lambda () (list:split-3d '())))
  nil)

; list:split-2d 测试
(test:add-case 'list-func 'split-2d-basic
  '((lambda () (list:split-2d '(1 2 3 4 5 6) 2)))
  '((1 2) (3 4) (5 6)))

; list:remove-nth 测试
(test:add-case 'list-func 'remove-nth-first
  '((lambda () (list:remove-nth 0 '(a b c))))
  '(b c))

(test:add-case 'list-func 'remove-nth-middle
  '((lambda () (list:remove-nth 1 '(a b c))))
  '(a c))

(test:add-case 'list-func 'remove-nth-last
  '((lambda () (list:remove-nth 2 '(a b c))))
  '(a b))

; list:union 测试 - 并集
(test:add-case 'list-func 'union-basic
  '((lambda () (list:union '(1 2 3) '(3 4 5))))
  '(1 2 3 4 5))

(test:add-case 'list-func 'union-no-overlap
  '((lambda () (list:union '(1 2) '(3 4))))
  '(1 2 3 4))

; list:intersect 测试 - 交集
(test:add-case 'list-func 'intersect-basic
  '((lambda () (list:intersect '(1 2 3 4) '(3 4 5))))
  '(3 4))

(test:add-case 'list-func 'intersect-no-overlap
  '((lambda () (list:intersect '(1 2) '(3 4))))
  nil)

; list:difference 测试 - 差集
(test:add-case 'list-func 'difference-basic
  '((lambda () (list:difference '(1 2 3 4) '(3 4 5))))
  '(1 2))

; list:reverse (标准函数) 测试
(test:add-case 'list-func 'reverse-basic
  '((lambda () (reverse '(1 2 3 4))))
  '(4 3 2 1))

(test:run-all)