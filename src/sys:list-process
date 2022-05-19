(defun sys:list-process (/ vlist vobj lcom lexecquery item)
  "获取当前运行的进程对象列表。"
  ""
  (vl-load-com)
  (setq vlist (quote nil))
  (if (setq vobj (vlax-create-object "wbemscripting.swbemlocator"))
    (progn (setq lcom (vlax-invoke vobj (quote connectserver)
          "."
          "\\root\\cimv2"
          ""
          ""
          ""
          ""
          128 nil))
      (setq lexecquery (vlax-invoke lcom (quote execquery)
          "Select * from Win32_Process"))
      (vlax-for item lexecquery (setq vlist (cons item vlist)))
      (vlax-release-object lexecquery)
      (vlax-release-object lcom)
      (vlax-release-object vobj)))
  vlist)
