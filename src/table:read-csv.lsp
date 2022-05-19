(defun table:read-csv (file)
  "读取 csv 文件。"
  "二维表"
  (vl-remove-if (quote (lambda (x)
        (and (= 1 (length x))
          (= ""
            (car x)))))
    (mapcar (quote (lambda (x)
          (string:to-list x ",")))
      (string:to-list (@:get-file-contents (findfile file))
        "\n"))))
