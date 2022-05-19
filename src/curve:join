(defun curve:join (entlst fuzz)
  "合并多段线函数"
  "return:合并后的多段线图元名"
  "example:(curve:join '(ent1 ent2 ent3 ..)
    0.000001)\n   (curve:join (ssget)
    0.000001)\n"
  (setq oldpeditaccept (getvar "PEDITACCEPT"))
  (setvar "PEDITACCEPT"
    1)
  (if (= fuzz nil)
    (setq fuzz 1.0e-006))
  (if (not (p:picksetp entlst))
    (cond ((p:ename-listp entlst)
        (setq entlst (entlist->pickset entlst)))
      ((p:vla-listp entlst)
        (setq entlst (entlist->pickset (mapcar (quote vla->e)
              entlst))))))
  (command "_.pedit"
    "_M"
    entlst ""
    "_J"
    "_J"
    "_B"
    fuzz "")
  (setvar "cmdecho"
    0)
  (setvar "PEDITACCEPT"
    oldpeditaccept)
  (entlast))
