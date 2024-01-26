(defun example:dcl-multirb (/ dcl-fp rbn group-rb rb-value) 
  "多行多列无线按钮的选取"
  "选中的按钮的key"
  "(example:dcl-multirb)"
  ;;;; Model
  (setq rbn 0) ;; 用于记录无线按钮总数
  (setq group-rb "slt") ;; 用于控制 rb 系列的组名
  (setq rb-value nil) ;; 用于最后选中的 rb 号
  ;;;; View
  ;; 生成 DCL 对话框文件，你也可以用自己的方法生成。生成的 dcl 文件在 temp 文件夹下。
  (dcl:dialog "buttons")
  (dcl:begin-cluster "radio_row" "")
  (repeat 3 
    (progn 
      (dcl:begin-cluster "column" "")
      (repeat 3 
        (write-line 
          (strcat 
            ":radio_button{key=\""
            group-rb
            (itoa (setq rbn (1+ rbn)))
            "\"; label=\""
            "Select"
            (itoa rbn)
            "\";action=\"(cb-rb $key)\";}" )
          dcl-fp))
      (dcl:end-cluster)
    ))
  (dcl:end-cluster)
  (dcl:end-dialog str-yes-no)
  ;;;; Control
  ;; 控制 多行多列无线按钮的选中与否
  (defun cb-rb (key / i) 
    (print key)
    (setq i 0)
    (repeat rbn 
      (if (/= key (strcat group-rb (itoa (setq i (1+ i))))) 
        (set_tile (strcat group-rb (itoa i)) "0")
        (set_tile (strcat group-rb (itoa i)) "1");;
      ))
    (setq rb-value key) ;; 最终选中的 rb
  )
  ;;;; New
  (dcl:new "buttons")
  ;;;; Init 该程序不需要
  ;;;; Show
  (dcl:show)
  rb-value
)
