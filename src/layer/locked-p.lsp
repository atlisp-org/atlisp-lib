(defun layer:locked-p (lname / each)
    "层是否锁定？"
    (list:exist (entity:lockedlist)
        lname))
