(defun pickset:sub (ss1 ss2 / ename ss sstemp)
  "选择集相减"
  "选择集 or nil"
  "(pickset:Sub (setq ss1 (ssget))
    (setq ss2 (ssget)))"
  (cond ((and (equal (type ss1)
          (quote pickset))
        (equal (type ss2)
          (quote pickset)))
      (cond ((equal (sslength ss1)
            (sslength ss2))
          (vl-cmdf "_.select"
            ss1 "")
          (setq ss (ssget "p"))
          (vl-cmdf "_.select"
            ss2 "")
          (setq sstemp (ssget "p"))
          (repeat (sslength sstemp)
            (setq ename (ssname sstemp 0))
            (ssdel ename sstemp)
            (if (ssmemb ename ss)
              (ssdel ename ss)))
          (if (equal (sslength ss)
              0)
            nil ss))
        (t (command "._Select"
            ss1 "_Remove"
            ss2 "")
          (ssget "_P"))))
    ((and (equal (type ss1)
          (quote pickset))
        (not (equal (type ss2)
            (quote pickset))))
      ss1)
    (t nil)))
