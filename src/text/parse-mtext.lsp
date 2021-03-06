(defun text:parse-mtext (str-m / flag flag-char str-list lst-res fmt% str%)
  "解析多行文本中的格式化字符串，目前为测试版，不保证结果完全正确。"
  "结果表. ((fmt . t)(str)...(fmt . t)). 某单元为点对且 (cdr 单元)
  为 t 时表示为格式串，nil 时为的内容串"
  "(text:parse-mtext \"\\\\A1;m{\\\\H0.7x;\\\\S3^;} {\\\\H0.7x;\\\\S^2;\\\\H1.4286x; aN\\\\KN BBB\\\\k  \\\\OOO \\\\oabc  \\\\P\\\\P\\\\fSimSun|b0|i0|c134|p2;sdfaf}\")"
  (if (= (quote str)
      (type str-m))
    (progn (setq flag nil)
      (setq res nil)
      (setq str-list (vl-string->list str-m))
      (while (setq asc% (car str-list))
        (cond (flag (setq fmt% (cons asc% fmt%))
            (cond ((= ";"
                  (chr asc%))
                (setq flag nil)
                (setq flag-char nil)
                (setq lst-res (cons (cons fmt% t)
                    lst-res))
                (setq fmt% nil))
              ((and first (member (chr asc%)
                    (list "{"
                      "}"
                      (chr 92))))
                (setq flag nil)
                (setq fmt% nil)
                (setq str% (cons asc% str%)))
              ((and first (member (chr asc%)
                    (quote ("P"
                        "K"
                        "k"
                        "O"
                        "o"
                        "S"))))
                (setq flag nil)
                (setq flag-char (chr asc%))
                (setq lst-res (cons (cons fmt% t)
                    lst-res))
                (setq fmt% nil))
              (t))
            (setq first nil))
          ((= flag-char "S")
            (cond ((member (chr asc%)
                  (quote ("^")))
                (if str% (setq lst-res (cons (cons str% nil)
                      lst-res)))
                (setq str% nil)
                (setq lst-res (cons (cons (list asc%)
                      t)
                    lst-res)))
              ((member (chr asc%)
                  (quote (";")))
                (setq flag-char nil)
                (if str% (setq lst-res (cons (cons str% nil)
                      lst-res)))
                (setq str% nil)
                (setq lst-res (cons (cons (list asc%)
                      t)
                    lst-res)))
              (t (setq str% (cons asc% str%)))))
          ((member (chr asc%)
              (quote ("{")))
            (setq fmt% (cons asc% fmt%)))
          ((member (chr asc%)
              (quote ("}")))
            (if str% (setq lst-res (cons (cons str% nil)
                  lst-res)))
            (setq str% nil)
            (setq fmt% (cons asc% fmt%))
            (setq lst-res (cons (cons fmt% t)
                lst-res))
            (setq fmt% nil))
          ((= 92 asc%)
            (setq flag t)
            (setq first t)
            (setq fmt% (cons asc% fmt%))
            (if str% (setq lst-res (cons (cons str% nil)
                  lst-res)))
            (setq str% nil))
          (t (setq str% (cons asc% str%))))
        (setq str-list (cdr str-list)))
      (if str% (setq lst-res (cons str% lst-res)))
      (if fmt% (setq lst-res (cons fmt% lst-res)))
      (reverse (mapcar (quote (lambda (x)
              (if (atom (car x))
                (setq x (list x)))
              (cons (vl-list->string (reverse (if (listp (car x))
                      (car x)
                      (list x))))
                (cdr x))))
          lst-res)))
    nil))
