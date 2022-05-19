(defun block:attach (path pt ang scale)
  "附着外部参照。浩辰CAD,中望CAD以块方式插入。"
  ""
  "(block:attach \"D:/a.dwg\"
    (getpoint)
    0 1)"
  (cond ((or is-gcad is-zwcad (< (@:acadver)
          18))
      (block:insert (vl-filename-base path)
        path pt ang scale))
    ((>= (@:acadver)
        18)
      (setvar "cmdecho"
        0)
      (command "-attach"
        path "A"
        pt scale scale ang)
      (setvar "cmdecho"
        1)))
  (entlast))
