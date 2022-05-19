(defun hdinfo:get-cpuid (/ vlist vobj lcom lexecquery item)
  "获取CPU ID,不一定有用。"
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
          "Select * from Win32_Processor"))
      (vlax-for item lexecquery (setq vlist (vlax-get item (quote processorid))))
      (vlax-release-object lexecquery)
      (vlax-release-object lcom)
      (vlax-release-object vobj)))
  vlist)
