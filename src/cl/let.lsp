(defun cl:let (bindings body)
  "commonlisp中的let，在autolisp中需要在参数前加quote，当body为多条语句时需要用 progn 包裹。"
  "any"
  "(let '((a 3) (b 5)) '(* a b)) => 15"
  (eval
    (cons
      (list 'lambda (mapcar 'car bindings) body)
      (mapcar 'cadr bindings)
      )
    )
  )
