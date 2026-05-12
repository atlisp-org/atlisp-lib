; std: 标准函数测试用例

(test:suite 'std-func)

; std:rgb 测试 - RGB 颜色计算
(test:add-case 'std-func 'rgb-red-int
  '((lambda () (std:rgb 255 0 0)))
  255)

(test:add-case 'std-func 'rgb-green-int
  '((lambda () (std:rgb 0 255 0)))
  65280)

(test:add-case 'std-func 'rgb-blue-int
  '((lambda () (std:rgb 0 0 255)))
  16711680)

(test:add-case 'std-func 'rgb-white
  '((lambda () (std:rgb 255 255 255)))
  16777215)

(test:add-case 'std-func 'rgb-black
  '((lambda () (std:rgb 0 0 0)))
  0)

(test:add-case 'std-func 'rgb-float
  '((lambda () (std:rgb 0.999 0 0)))
  255)

(test:add-case 'std-func 'rgb-invalid
  '((lambda () (std:rgb 300 0 0)))
  16777215)

; std:catchapply 测试 - 安全调用
(test:add-case 'std-func 'catchapply-success
  '((lambda () (std:catchapply (quote +) '(1 2 3))))
  6)

(test:add-case 'std-func 'catchapply-func
  '((lambda () (std:catchapply (function +) '(1 2 3))))
  6)

(test:add-case 'std-func 'catchapply-error
  '((lambda () (std:catchapply (quote /) '(1 0))))
  nil)

; std:e2vla 测试 - 图元转 VLA 对象
; 注意: 需要实际图元才能测试

; std:vla2e 测试 - VLA 对象转图元
; 注意: 需要实际 VLA 对象才能测试

(test:run-all)