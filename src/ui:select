(defun ui:select (str-subject lst / dcl_fp dcl-tmp dcl_id para% set-result result initget%)
  "显示列表选择面板，选择所需项并返回。"
  "选中的内容"
  "(ui:select \"请选择你需要操作的项\"
    '(\"我愿意\"
      \"不愿意\"
       \"你是一个好人\"))"
  (defun set-result (/ i%)
    (setq i% 1)
    (foreach opt% lst (if (= "1"
          (get_tile (strcat "S_"
              (itoa i%))))
        (setq result (nth (1- i%)
            lst)))
      (setq i% (1+ i%))))
  (if lst (if (= 1 (getvar "filedia"))
      (progn (progn (setq dcl-tmp (strcat @:*tmp-path* "tmp-select.dcl"))
          (setq dcl_fp (open dcl-tmp "w"))
          (write-line (strcat "select : dialog {"
              "label = \""
              str-subject "\"; "
              ":radio_column {label=\""
              str-subject "\"; ")
            dcl_fp)
          (setq i% 1)
          (setq bt-width 18)
          (foreach opt% lst (write-line (strcat ":radio_button{ fixed_width=true; width="
                (itoa bt-width)
                ";key=\"S_"
                (itoa i%)
                "\";label=\""
                opt% "\";}")
              dcl_fp)
            (setq i% (1+ i%)))
          (write-line "} :spacer {} ok_cancel; }"
            dcl_fp)
          (close dcl_fp))
        (setq dcl_id (load_dialog dcl-tmp))
        (if (not (new_dialog "select"
              dcl_id))
          (exit))
        (action_tile "accept"
          "(set-result)(done_dialog 1)")
        (start_dialog)
        (unload_dialog dcl_id)
        (vl-file-delete dcl-tmp)
        result)
      (progn (setq i% 0)
        (setq opt% ""
          initget% "0")
        (foreach lst% lst (setq opt% (strcat opt% (itoa (1+ i%))
              ":"
              lst% "\n"))
          (setq initget% (strcat initget% "
              "
              (itoa (1+ i%))))
          (setq i% (1+ i%)))
        (initget 1 initget%)
        (nth (1- (atoi (getkword (strcat "请输入要操作的序号 : \n"
                  opt%))))
          lst)))
    (progn (alert (_ "parameter is nil."))
      nil)))
