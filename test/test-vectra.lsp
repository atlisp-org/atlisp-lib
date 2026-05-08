; vectra: 向量/几何函数测试用例

(test:suite 'vectra-func)

; vectra:vector-angle 测试 - 向量角度
(test:add-case 'vectra-func 'vector-angle-x-axis
  '((lambda () (vectra:vector-angle '(1 0))))
  0.0)

(test:add-case 'vectra-func 'vector-angle-y-axis
  '((lambda () (vectra:vector-angle '(0 1))))
  1.570796)

(test:add-case 'vectra-func 'vector-angle-45deg
  '((lambda () (vectra:vector-angle '(1 1))))
  0.785398)

; vectra:vector-len 测试 - 向量长度
(test:add-case 'vectra-func 'vector-len-2d
  '((lambda () (vectra:vector-len '(3 4))))
  5.0)

(test:add-case 'vectra-func 'vector-len-unit
  '((lambda () (vectra:vector-len '(1 0))))
  1.0)

(test:add-case 'vectra-func 'vector-len-3d
  '((lambda () (vectra:vector-len '(1 2 2))))
  3.0)

; vectra:vector-dotproduct 测试 - 点积
(test:add-case 'vectra-func 'vector-dotproduct
  '((lambda () (vectra:vector-dotproduct '(1 2) '(3 4))))
  11)

(test:add-case 'vectra-func 'vector-dotproduct-zero
  '((lambda () (vectra:vector-dotproduct '(1 0) '(0 1))))
  0)

; vectra:vector-reverse 测试 - 向量反转
(test:add-case 'vectra-func 'vector-reverse
  '((lambda () (vectra:vector-reverse '(1 2 3))))
  '(-1 -2 -3))

; vectra:deg2rad 测试
(test:add-case 'vectra-func 'deg2rad-0
  '((lambda () (vectra:deg2rad 0)))
  0.0)

(test:add-case 'vectra-func 'deg2rad-180
  '((lambda () (vectra:deg2rad 180)))
  3.141593)

(test:add-case 'vectra-func 'deg2rad-90
  '((lambda () (vectra:deg2rad 90)))
  1.570796)

; vectra:rad2deg 测试
(test:add-case 'vectra-func 'rad2deg-0
  '((lambda () (vectra:rad2deg 0)))
  0.0)

(test:add-case 'vectra-func 'rad2deg-pi
  '((lambda () (vectra:rad2deg 3.141593)))
  180.0)

(test:add-case 'vectra-func 'rad2deg-pi-2
  '((lambda () (vectra:rad2deg 1.570796)))
  90.0)

; vectra:ceil (ceiling) 测试
(test:add-case 'vectra-func 'ceiling-positive
  '((lambda () (vectra:ceiling 3.2)))
  4)

(test:add-case 'vectra-func 'ceiling-negative
  '((lambda () (vectra:ceiling -3.2)))
  -3)

(test:add-case 'vectra-func 'ceiling-integer
  '((lambda () (vectra:ceiling 5)))
  5)

(test:run-all)