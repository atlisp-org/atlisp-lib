(defun entity:addtext (str pt zg ang dq)
  "生成一个TEXT实体,entity:make-text参数简化版"
  "return:文字图元名"
  "example:(entity:addtext \"文字\"
    (getpoint)
    3 0 11)"
  (entity:make-text str pt zg ang 0.8 0 dq))
