(defun entity:activelayer (name / iloc out)
  "设置指定层为当前层.  name:图层名"
  "成功返回t，失败返回nil"
  "(entity:ActiveLayer \"layer1\")"
  (if (and (tblsearch "layer"
        name)
      (setq iloc (vl-position name (entity:layers))))
    (progn (vla-put-activelayer (std:active-document)
        (vla-item (std:layers)
          iloc))
      t)
    nil))
