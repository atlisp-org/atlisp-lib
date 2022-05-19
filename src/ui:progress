(defun ui:progress (current max-number)
  "\n提供一个进度条功能函数，current 是当前进度   max-number 是进度总量\n调用完成之后，可以使用(GRTEXT)
  清除进度\n"
  "无返回值"
  "\n(SETQ CURRENT 0)\n(repeat 1000 (UI:PROGRESS (setq CURRENT (1+ CURRENT))
      1000))\n(grtext)\n"
  (require (quote music-die:multi-element))
  (grtext -1 (strcat (substr "████████████████████"
        1 (* 2 (fix (* 10 (/ current max-number 1.0)))))
      (nth (fix (* 7 (- (* 10 (/ current max-number 1.0))
              (fix (* 10 (/ current max-number 1.0))))))
        (quote ("▏"
            "▎"
            "▍"
            "▌"
            "▋"
            "▊"
            "▉")))
      (apply (quote strcat)
        (music-die:multi-element "
          "
          (- 20 (* 2 (fix (* 10 (/ current max-number 1.0)))))))
      (rtos current)
      "/"
      (rtos max-number))))
