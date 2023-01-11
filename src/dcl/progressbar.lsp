(defun dcl:progressbar (key style show-txt? / color)
  "dcl 进度条。"
  ""
  "(dcl:progress-bar \"pbar1\"
    \"\"
    t)"
  (or (setq color theme:bg-color)
    (setq color 152))
  (write-line (strcat (if show-txt? ":row{"
        "")
      ":image{key=\""
      key "\";height=0.3;color=253;fixed_height=true;vertical_margin=none;"
      (dcl:lst2dcl style) "}"
      (if show-txt? (strcat ":text{key=\""
          key "txt\";width=4;fixed_width=true;}}")
        ""))
    dcl-fp))
