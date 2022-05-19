(defun dcl:paging (h-or-v / *error*)
  "DCL 分页模块，key为 prev, next, curr_total. \n参数 h-or-v : t 为 水平，nil 为竖向.\nModel部外部变量说明: curr-page:当前页号, total-page :总页数。\nControl部回调函数定义: (cb-flush-page)
  页面更新。\nInit部: (paging-init)初始化按钮使能"
  "dcl格式字符串。"
  "(dcl:paging t)"
  (defun *error* (msg)
    (if (/= (quote file)
        (type dcl-fp))
      (alert "请先运行 dcl:dialog ."))
    (@:*error* msg))
  (defun cb-flush-page nil "一般函数，需根据功能要求重新定义."
    (alert "请定义回调函数 (cb-flush-page)"))
  (defun paging-init nil (if (= 0 curr-page)
      (mode_tile "prev"
        1)
      (mode_tile "prev"
        0))
    (if (= (1- total-page)
        curr-page)
      (mode_tile "next"
        1)
      (mode_tile "next"
        0))
    (set_tile "curr_total"
      (strcat (itoa (1+ curr-page))
        "/"
        (itoa total-page))))
  (defun cb-page-up nil (setq curr-page (1- curr-page))
    (if (< curr-page 0)
      (setq curr-page 0))
    (if (= 0 curr-page)
      (mode_tile "prev"
        1)
      (mode_tile "prev"
        0))
    (if (= (1- total-page)
        curr-page)
      (mode_tile "next"
        1)
      (mode_tile "next"
        0))
    (set_tile "curr_total"
      (strcat (itoa (1+ curr-page))
        "/"
        (itoa total-page)))
    (cb-flush-page))
  (defun cb-page-down nil (setq curr-page (1+ curr-page))
    (if (> curr-page total-page)
      (setq curr-page total-page))
    (if (= 0 curr-page)
      (mode_tile "prev"
        1)
      (mode_tile "prev"
        0))
    (if (= (1- total-page)
        curr-page)
      (mode_tile "next"
        1)
      (mode_tile "next"
        0))
    (set_tile "curr_total"
      (strcat (itoa (1+ curr-page))
        "/"
        (itoa total-page)))
    (cb-flush-page))
  (write-line (strcat (if h-or-v ":row"
        ":column")
      "{alignment=centered;children_alignment=centered;"
      ":button{action=\"(cb-page-up)\";label=\"(<)Prev\";mnemonic=\"<\";key=\"prev\";is_enabled=false;alignment=centered;}"
      "spacer_0;"
      ":text_part{key=\"curr_total\"; value=\"\";alignment=centered;width=10;}"
      ":button{action=\"(cb-page-down)\";label=\"Next(>)\";mnemonic=\">\";key=\"next\";is_enabled=false;alignment=centered;}}")
    dcl-fp))
