(defun base:init nil "@lisp 函数库基本符号及简化函数。为了保证@lisp函数库能正常运行，需先执行该函数。该函数被 @lisp 自动调用。"
  ""
  "(base:init)"
  "常用 visuallisp 全局符号。"
  (setq *acad* (vlax-get-acad-object)
    *doc* (vla-get-activedocument *acad*)
    *docs* (vla-get-documents *acad*)
    *ms* (vla-get-modelspace *doc*)
    *ps* (vla-get-paperspace *doc*)
    *blks* (vla-get-blocks *doc*)
    *lays* (vla-get-layers *doc*)
    *lts* (vla-get-linetypes *doc*)
    *sts* (vla-get-textstyles *doc*)
    *grps* (vla-get-groups *doc*)
    *dims* (vla-get-dimstyles *doc*)
    *louts* (vla-get-layouts *doc*)
    *vps* (vla-get-viewports *doc*)
    *vs* (vla-get-views *doc*)
    *dics* (vla-get-dictionaries *doc*)
    *layouts* (vla-get-layouts *doc*)
    *DISPLAY* (vla-get-display (vla-get-preferences (vla-get-application *acad*)))
    )
  "用于剪贴板的全局函数"
  (setq @:*clipboard* (vlax-get (vlax-get (vlax-get-or-create-object "HTMLFILE")
        (quote parentwindow))
      (quote clipboarddata)))
  "简化函数"
  (setq o2e vlax-vla-object->ename)
  (setq e2o vlax-ename->vla-object)
  (defun defconstant (name value)
    "定义全局常量。全局常量通常以 + 开始和结尾。逻辑意义上的。"
    ""
    "(defconstant '+aaa+ 2)"
    (setq name (vl-symbol-name name))
    (eval (list (quote pragma)
        (list (quote quote)
          (list (cons (quote unprotect-assign)
              name)))))
    (set (read name)
      value)
    (eval (list (quote pragma)
        (list (quote quote)
          (list (cons (quote protect-assign)
              name))))))
  (princ))
