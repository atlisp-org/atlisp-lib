(DEFUN LIST:DOT->LIST (LST)
"dot list to common list"
"common list"
    "(list:dot->list '(1 2 3 . 4))"
    (IF (LISTP LST)
        LST (COND ((AND LST (LISTP LST))
                (CONS (CAR LST)
                    (LIST:DOT->LIST (CDR LST))))
            ((AND LST (NOT (LISTP LST)))
                (CONS LST (LIST:DOT->LIST nil)))
            (T nil))))
