(defun layer:freezed-p (lname / each)
    "层是否冻结？"
    (list:exist (entity:freezelist)
        lname))
