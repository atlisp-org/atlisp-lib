(defun text:remove-fmt (str-mtext / res)
  "去除多行文本中的格式化字符串."
  "结果字符串"
  "(text:remove-fmt \"\\\\A1;m{\\\\H0.7x;\\\\S3^;} {\\\\H0.7x;\\\\S^2;\\\\H1.4286x; aN\\\\KN BBB\\\\k  \\\\OOO \\\\oabc  \\\\P\\\\P\\\\fSimSun|b0|i0|c134|p2;sdfaf}\")"
  (if (setq res (mapcar (quote car)
        (vl-remove-if (quote (lambda (x)
              (cdr x)))
          (text:parse-mtext str-mtext))))
    (apply (quote strcat)
      res)))
