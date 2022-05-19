(defun hdinfo:get-hd-serial (/ lccon lox objw ret serx sn)
  "获取硬盘序列号,不一定有用。"
  (setq serx (quote nil))
  (if (setq objw (vlax-create-object "wbemscripting.swbemlocator"))
    (progn (setq lccon (vlax-invoke objw (quote connectserver)
          "."
          "\\root\\cimv2"
          ""
          ""
          ""
          ""
          128 nil))
      (setq lox (vlax-invoke lccon (quote execquery)
          "select serialnumber,tag from win32_physicalmedia"))
      (vlax-for item lox (setq serx (cons (list (vlax-get item (quote tag))
              (vlax-get item (quote serialnumber)))
            serx)))
      (vlax-release-object lox)
      (vlax-release-object lccon)
      (vlax-release-object objw)))
  serx)
