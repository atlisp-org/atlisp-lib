(defun dcl:begin-cluster (cluster-type label)
  "开始 dcl 容器类控件。与 dcl:end-cluster 成对使用。cluster-type: row,column,boxed_row,boxed_column,boxed_radio_row,boxed_radio_column"
  ""
  "(dcl:begin-cluster \"row\"
    \"\")(progn (dcl:mtext \"mt\"
      8 100 )(dcl:paging t)
    (dcl:end-cluster))"
  (if (member cluster-type (quote ("row"
          "column"
          "boxed_row"
          "boxed_column"
          "boxed_radio_row"
          "boxed_radio_column")))
    (write-line (strcat ":"
        cluster-type "{"
        (if (/= ""
            label)
          (strcat "label=\""
            label "\";")
          ""))
      dcl-fp)
    (write-line ":row{"
      dcl-fp)))
