(defun fun:test (fun usecases)
  "函数测试，fun:函数名，usecases:测试用例，测试用例为参数和返回值组成的点对表。"
  "lst,对应测试用例的测试结果，t为通过，nil为失败"
  "(fun:test point:mid '((((0 0)(2 2)) . (1 1))(((3 3)(5 5)) . (4 4))))"
  (mapcar 
   '(lambda (x)
     (list:equal (apply (function fun) (car x))
      (cdr x)
      1e-6)
     )
   usecases))

