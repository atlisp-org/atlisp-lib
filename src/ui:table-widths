(defun ui:table-widths (lst-data)
  "求用于dcl表格的各列的自适应宽度。"
  "数值表"
  "(ui:table-widths '((\"姓名\"
        \"性别\"
        \"年龄\"
        \"身高\")(\"张三\"\"男\"18 180)(\"李四\"
        \"女\"
        18 170)(\"王五\"
        \"男\"
        18 180)))"
  (mapcar (quote (lambda (x)
        (+ 2 (apply (quote max)
            (mapcar (quote (lambda (y)
                  (strbytelen (@:to-string y))))
              x)))))
    (apply (quote mapcar)
      (cons (quote list)
        lst-data))))
