(defun string:num-compare (fun str1 str2)
  "字符串在夹杂数字时，如果数字前后的字符串相同，按数字大小比较。fun 可用函数为 >, >=, <, <=,2020-03-31"
  "T or nil"
  "(string:num-compare < \"a5\"
     \"a13\")"
  (apply (quote or)
    (mapcar (quote (lambda (a b)
          (cond ((and (string:intp a)
                (string:intp b))
              (fun (atoi a)
                (atoi b)))
            ((and (string:realp a)
                (string:realp b))
              (fun (atof a)
                (atof b)))
            (t (fun a b)))))
      (string:auto-split str1)
      (string:auto-split str2))))
