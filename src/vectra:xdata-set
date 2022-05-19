(defun vectra:xdata-set (ename appid xdata /)
  (if (null (tblsearch "APPID"
        appid))
    (regapp appid))
  (vectra:xdata-set-inner ename (list (cons appid xdata))))
