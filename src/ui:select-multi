(defun ui:select-multi (str-subject lst / dcl_fp dcl-tmp dcl_id para% set-result result initget%)
  "显示列表选择面板，选择多个所需项并返回。"
  "选中的内容"
  "(ui:select-multi \"请选择你喜欢的人\"
    '(\"AB\"
      \"Lisa\"
       \"VitalGG\"))"
  (defun set-result (/ i%)
    (setq result (quote nil))
    (setq i% 1)
    (foreach opt% lst (if (= "1"
          (get_tile (strcat "S_"
              (itoa i%))))
        (setq result (cons (nth (1- i%)
              lst)
            result)))
      (setq i% (1+ i%))))
  (if lst (if (= 1 (getvar "filedia"))
      (progn (setq dcl-tmp (strcat @:*tmp-path* "tmp-select.dcl"))
        (setq dcl_fp (open dcl-tmp "w"))
        (write-line (strcat "select : dialog {"
            "label = \""
            str-subject "\"; "
            ":column {label=\""
            str-subject "\"; ")
          dcl_fp)
        (setq i% 1)
        (setq bt-width 18)
        (foreach opt% lst (write-line (strcat ":toggle{ fixed_width=true; width="
              (itoa bt-width)
              ";key=\"S_"
              (itoa i%)
              "\";label=\""
              opt% "\";}")
            dcl_fp)
          (setq i% (1+ i%)))
        (write-line "} :spacer {} ok_cancel; }"
          dcl_fp)
        (close dcl_fp)
        (setq dcl_id (load_dialog dcl-tmp))
        (if (not (new_dialog "select"
              dcl_id))
          (exit))
        (action_tile "accept"
          "(set-result)(done_dialog 1)")
        (start_dialog)
        (unload_dialog dcl_id)
        (vl-file-delete dcl-tmp)
        result))
    (progn (alert (_ "parameter is nil."))
      nil)))
