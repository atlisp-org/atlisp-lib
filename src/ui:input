(defun ui:input (str-subject lst / *error* dcl_fp dcl-tmp dcl_id para% set-result result initget%)
  "显示输入一个或多个文本输入的面板，返回所有文本框的值。\nlst 由一个或多个列表组成 \n    每个元素由 (label 默认值 说明 是否密文/列表及列表默认序号(以0开始))
  组成 。\nlabel 不可省略，默认值、说明和密文/序号 可省略。当为 <*> 时，为特殊处理符号，如 <hr> 水平线，<text> 单行文本。\n默认值(第二项):\n    当没有默认值及以后各项时，显示为文本编辑框\n    当为数值型和字符串时，且第4项不为列表时显示文本编辑框\n    当为数值型和字符串时，且第4项为列表时显示下拉菜单\n    当为数值型和字符串时，且第4项为 T 时显示密码编辑框\n    当为 T or nil 时，显示复选框，\n    当为列表时，显示下拉菜单。第4项为数字时，为列表默认值索引号。\n"
  "所有输入框的 label 和 值 组成的点对表，或 nil"
  "(ui:input \"请输入以下内容：\"
    '((\"Name1\")(\"Name2\"
        \"VitalGG\"
        \"带默认值的输入框\")
      (\"Pass1\"
        \"123456\"
        \"密码框\"
        T)
      (\"Bool:\"
        T \"真假值\")
      (\"Popup1:\"
        (\"one\"
          \"two\"
          \"three\")
        \"下拉列表\")(\"Popup2:\"
        3 \"下拉列表2\"
        (1 2 3 4 5))))"
  (defun *error* (msg)
    (if (= (quote file)
        (type dcl_fp))
      (close dcl_fp))
    (princ msg)
    (princ))
  (setq width-label (+ 4 (apply (quote max)
        (mapcar (quote (lambda (x)
              (strlen (car x))))
          lst))))
  (setq width-value (+ 2 (apply (quote max)
        (mapcar (quote (lambda (x)
              (strlen (@:to-string (cadr x)))))
          (vl-remove-if (quote (lambda (x)
                (or (null (cadr x))
                  (wcmatch (car x)
                    "<*>"))))
            lst)))))
  (if (> 5 width-value)
    (setq width-value 20))
  (setq width-desc (apply (quote max)
      (mapcar (quote (lambda (x)
            (strlen (@:to-string (caddr x)))))
        (vl-remove-if (quote (lambda (x)
              (null (caddr x))))
          lst))))
  (cond (is-gcad (setq width-desc (fix (* 1.5 width-desc))))
    ((< (@:acadver)
        22)
      (setq width-desc (fix (* 1.5 width-desc)))
      (setq width-desc (if (> width-desc 24)
          (fix (* width-desc 0.8))
          width-desc)))
    ((< (@:acadver)
        24)
      (setq width-desc (fix (* 1.0 width-desc)))
      (setq width-desc (fix (* width-desc 0.5))))
    (t (setq width-desc (fix (* 2.0 width-desc)))
      (setq width-desc (if (> width-desc 27)
          (fix (* width-desc 1.0))
          width-desc))))
  (defun set-result (/ i%)
    (setq result (quote nil))
    (setq i% 1)
    (foreach opt% lst (cond ((or (= 1 (length opt%))
            (and (< 1 (length opt%))
              (member (type-of (cadr opt%))
                (quote (int real str)))))
          (setq result (cons (@:to-type (get_tile (strcat "S_"
                    (itoa i%)))
                (if (cadr opt%)
                  (type-of (cadr opt%))
                  (quote str)))
              result)))
        ((or (= (cadr opt%)
              t)
            (= (cadr opt%)
              nil))
          (setq result (cons (if (= "1"
                  (get_tile (strcat "S_"
                      (itoa i%))))
                t nil)
              result)))
        ((listp (cadr opt%))
          (setq result (cons (nth (atoi (get_tile (strcat "S_"
                      (itoa i%))))
                (cadr opt%))
              result))))
      (setq i% (1+ i%))))
  (if lst (if (= 1 (getvar "filedia"))
      (progn (setq dcl-tmp (strcat @:*tmp-path* "tmp-input.dcl"))
        (setq dcl_fp (open dcl-tmp "w"))
        (write-line (strcat "input : dialog {"
            "label = \""
            str-subject "\"; "
            ":column {label=\""
            str-subject "\"; alignment=left;")
          dcl_fp)
        (setq i% 1)
        (setq bt-width 28)
        (foreach opt% lst (cond ((and (> (length opt%)
                  3)
                (= (quote list)
                  (type (nth 3 opt%))))
              (write-line (strcat ":row{:popup_list { fixed_width=true; width="
                  (itoa bt-width)
                  ";key=\"S_"
                  (itoa i%)
                  "\";"
                  "label=\""
                  (car opt%)
                  "\";"
                  (if (vl-position (cadr opt%)
                      (nth 3 opt%))
                    (strcat "value=\""
                      (itoa (vl-position (cadr opt%)
                          (nth 3 opt%)))
                      "\";")
                    "")
                  "}"
                  (if (or (caddr opt%)
                      (> width-desc 0))
                    (strcat ":text{value=\""
                      (@:to-string (caddr opt%))
                      "\";fixed_width=true; width="
                      (itoa width-desc)
                      ";alignment=left;}")
                    "")
                  "}")
                dcl_fp))
            ((wcmatch (car opt%)
                "<*>")
              (cond ((= "<hr>"
                    (car opt%))
                  (write-line (strcat ":image{ height=0.1; color=250; fixed_height=true;}")
                    dcl_fp))
                ((= "<text>"
                    (car opt%))
                  (write-line (strcat ":text{label=\""
                      (@:to-string (cadr opt%))
                      "\";}")
                    dcl_fp))
                ((= "<button>"
                    (car opt%))
                  (write-line (strcat ":button{label=\""
                      (@:to-string (cadr opt%))
                      "\";}")
                    dcl_fp))))
            ((or (= 1 (length opt%))
                (and (> (length opt%)
                    1)
                  (member (type-of (cadr opt%))
                    (quote (int real str)))))
              (write-line (strcat ":row{:text{ value=\""
                  (car opt%)
                  "\";width="
                  (itoa width-label)
                  ";fixed_width=true;}"
                  ":edit_box { fixed_width=true; width="
                  (itoa width-value)
                  ";key=\"S_"
                  (itoa i%)
                  "\";"
                  "value=\""
                  (if (cadr opt%)
                    (@:string-subst "\\\\"
                      "\\"
                      (@:to-string (cadr opt%)))
                    "")
                  "\";"
                  (if (nth 3 opt%)
                    "password_char=\"*\";"
                    "")
                  "}"
                  (if (or (caddr opt%)
                      (> width-desc 0))
                    (strcat ":text{value=\""
                      (@:to-string (caddr opt%))
                      "\";fixed_width=true; width="
                      (itoa width-desc)
                      ";alignment=left;}")
                    "")
                  "}")
                dcl_fp))
            ((or (= (cadr opt%)
                  t)
                (= (cadr opt%)
                  nil))
              (write-line (strcat ":row{:text{value=\""
                  (car opt%)
                  "\"; fixed_width=true;width="
                  (itoa width-label)
                  ";} :toggle{fixed_width=true;width="
                  (itoa width-value)
                  ";key=\"S_"
                  (itoa i%)
                  "\";"
                  "label=\"\";value=\""
                  (if (cadr opt%)
                    "1"
                    "0")
                  "\";alignment=left;"
                  "}"
                  (if (or (caddr opt%)
                      (> width-desc 0))
                    (strcat ":text{value=\""
                      (@:to-string (caddr opt%))
                      "\";fixed_width=true; width="
                      (itoa width-desc)
                      ";alignment=left;}")
                    "")
                  "}")
                dcl_fp))
            ((= (quote list)
                (type-of (cadr opt%)))
              (write-line (strcat ":row{:popup_list { fixed_width=true; width="
                  (itoa bt-width)
                  ";key=\"S_"
                  (itoa i%)
                  "\";"
                  "label=\""
                  (car opt%)
                  "\";"
                  (if (= (quote int)
                      (type-of (nth 3 opt%)))
                    (strcat "value=\""
                      (itoa (nth 3 opt%))
                      "\";")
                    "")
                  "}"
                  (if (or (caddr opt%)
                      (> width-desc 0))
                    (strcat ":text{value=\""
                      (@:to-string (caddr opt%))
                      "\";fixed_width=true; width="
                      (itoa width-desc)
                      ";alignment=left;}")
                    "")
                  "}")
                dcl_fp)))
          (setq i% (1+ i%)))
        (write-line "} :spacer {} ok_cancel; }"
          dcl_fp)
        (close dcl_fp)
        (setq dcl_id (load_dialog dcl-tmp))
        (if (not (new_dialog "input"
              dcl_id))
          (exit))
        (setq i% 1)
        (foreach opt% lst (if (listp (cadr opt%))
            (progn (start_list (strcat "S_"
                  (itoa i%)))
              (mapcar (quote add_list)
                (mapcar (quote @:to-string)
                  (cadr opt%)))
              (end_list)))
          (setq i% (1+ i%)))
        (setq i% 1)
        (foreach opt% lst (if (and (nth 3 opt%)
              (listp (nth 3 opt%)))
            (progn (start_list (strcat "S_"
                  (itoa i%)))
              (mapcar (quote add_list)
                (mapcar (quote @:to-string)
                  (nth 3 opt%)))
              (end_list)))
          (setq i% (1+ i%)))
        (action_tile "accept"
          "(set-result)(done_dialog 1)")
        (start_dialog)
        (unload_dialog dcl_id)
        (vl-file-delete dcl-tmp)
        (vl-remove-if (quote (lambda (x)
              (wcmatch (car x)
                "<*>")))
          (mapcar (quote cons)
            (mapcar (quote car)
              lst)
            (reverse result)))))
    (progn (alert (_ "parameter is nil."))
      nil)))
