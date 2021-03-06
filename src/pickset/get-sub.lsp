(defun pickset:get-sub (ss filter / stack-logic state-compare ss-mid to-filter compares)
  "从选择集或图元表中按 filter 规则过滤. 当前版本不支持 XOR 和 逻辑嵌套。"
  "过滤后的图元表"
  "(pickset:get-sub ss '((-4 . \"<OR\")(1 . \"1*\")(-4 . \">\")(1 . \"7\")(-4 . \"<\")(1 . \"4\")(-4 . \"OR>\")))"
  (if (= (quote pickset)
      (type ss))
    (setq ss (pickset:to-list ss)))
  (setq stack-logic (quote nil))
  (setq state-compare nil)
  (setq ss-mid (quote nil))
  (defun compares (x)
    (if (atom (cdr (assoc (car filter)
            (entget x))))
      ((eval (read state-compare))
        (cdr (assoc (car filter)
            (entget x)))
        (cdr filter))
      (apply (quote and)
        (mapcar (quote (lambda (op m n)
              ((eval (read op))
                m n)))
          (string:to-list state-compare ",")
          (cdr (assoc (car filter)
              (entget x)))
          (cdr filter)))))
  (defun to-filter (filter / ss-n op)
    (cond ((null (car stack-logic))
        (cond ((null state-compare)
            (if (= (quote str)
                (type (cdr filter)))
              (setq ss (vl-remove-if-not (quote (lambda (x)
                      (and (= (quote str)
                          (type (cdr (assoc (car filter)
                                (entget x)))))
                        (wcmatch (strcase (cdr (assoc (car filter)
                                (entget x))))
                          (strcase (cdr filter))))))
                  ss))
              (setq ss (vl-remove-if-not (quote (lambda (x)
                      (member filter (entget x))))
                  ss))))
          (t (setq != /=)
            (setq <> /=)
            (setq ss (vl-remove-if-not (quote (lambda (x)
                    (compares x)))
                ss)))))
      ((= "<AND"
          (strcase (car stack-logic)))
        (cond ((null state-compare)
            (if (= (quote str)
                (type (cdr filter)))
              (setq ss (vl-remove-if-not (quote (lambda (x)
                      (and (= (quote str)
                          (type (cdr (assoc (car filter)
                                (entget x)))))
                        (wcmatch (strcase (cdr (assoc (car filter)
                                (entget x))))
                          (strcase (cdr filter))))))
                  ss))
              (setq ss (vl-remove-if-not (quote (lambda (x)
                      (member filter (entget x))))
                  ss))))
          (t (setq != /=)
            (setq <> /=)
            (setq ss (append ss (vl-remove-if-not (quote (lambda (x)
                      (compares x)))
                  ss))))))
      ((= "<NOT"
          (strcase (car stack-logic)))
        (cond ((null state-compare)
            (if (= (quote str)
                (type (cdr filter)))
              (setq ss (vl-remove-if (quote (lambda (x)
                      (and (= (quote str)
                          (type (cdr (assoc (car filter)
                                (entget x)))))
                        (wcmatch (strcase (cdr (assoc (car filter)
                                (entget x))))
                          (strcase (cdr filter))))))
                  ss))
              (setq ss (vl-remove-if (quote (lambda (x)
                      (member filter (entget x))))
                  ss))))
          (t (setq != /=)
            (setq <> /=)
            (setq ss (append ss (vl-remove-if (quote (lambda (x)
                      (compares x)))
                  ss))))))
      ((= "<OR"
          (strcase (car stack-logic)))
        (cond ((null state-compare)
            (if (= (quote str)
                (type (cdr filter)))
              (setq ss-mid (append ss-mid (vl-remove-if-not (quote (lambda (x)
                        (and (= (quote str)
                            (type (cdr (assoc (car filter)
                                  (entget x)))))
                          (wcmatch (strcase (cdr (assoc (car filter)
                                  (entget x))))
                            (strcase (cdr filter))))))
                    ss)))
              (setq ss-mid (append ss-mid (vl-remove-if-not (quote (lambda (x)
                        (member filter (entget x))))
                    ss)))))
          (t (setq != /=)
            (setq <> /=)
            (setq ss-mid (append ss-mid (vl-remove-if-not (quote (lambda (x)
                      (compares x)))
                  ss))))))
      (t nil)))
  (foreach filter% filter (cond ((= (car filter%)
          -4)
        (cond ((member (read (cdr filter%))
              (mapcar (quote read)
                (quote ("<AND"
                    "<NOT"
                    "<OR"
                    "<XOR"))))
            (setq stack-logic (cons (cdr filter%)
                stack-logic)))
          ((member (read (cdr filter%))
              (mapcar (quote read)
                (quote ("AND>"
                    "NOT>"))))
            (setq state-compare nil)
            (setq stack-logic (cdr stack-logic)))
          ((member (read (cdr filter%))
              (mapcar (quote read)
                (quote ("OR>"
                    "XOR>"))))
            (setq state-compare nil)
            (setq ss ss-mid)
            (setq ss-mid (quote nil))
            (setq stack-logic (cdr stack-logic)))
          (t (setq state-compare (cdr filter%)))))
      (t (to-filter filter%))))
  (if ss-mid (setq ss ss-mid))
  ss)
