(defun xyp:Ustr (bit msg def spflag / inp nval)
  "字符串输入格式化"
  "string"
  "(setq txt1 (Ustr 1 \"字符串\" txt1 nil))"
  (if (and def (/= def ""))
    (setq msg (strcat "\n" msg "<" def ">: ")
	  inp (getstring msg spflag)
	  inp (if (= inp "")def inp)
    )
    (progn
      (setq msg (strcat "\n" msg ": "))
      (if (= bit 1)
	(while (= "" (setq inp (getstring msg spflag))))
	(setq inp (getstring msg spflag))
      )
    )
  )
  (if inp inp def)
)
