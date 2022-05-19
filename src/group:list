(defun group:list (/ i names)
    "列出图中的编组名"
    (setq i 0)
    (setq names (quote nil))
    (while (< i (vla-get-count *grps*))
        (setq names (cons (vla-get-name (vla-item *grps* i))
                names))
        (setq i (1+ i)))
    names)
