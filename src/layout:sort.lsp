(defun layout:sort (/ i layname layname-s)
    "自动按布局名排序布局"
    (setq layname (layout:list)
        layname-s (string:sort-by-numer layname)
        i 0)
    (foreach n layname-s (setq i (1+ i))
        (layout:set-position n i)))
