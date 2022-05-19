(defun layer:activelayer (name / iloc out)
    "设置指定层为当前层"
    "成功返回t，失败返回nil"
    "(entity:activelayer \"layer1\")"
    (if (and (tblsearch "layer"
                name)
            (setq iloc (vl-position name (layer:layers))))
        (progn (vla-put-activelayer (std:active-document)
                (vla-item (std:layers)
                    iloc))
            t)
        nil))
