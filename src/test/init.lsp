(defun test:init ()
  "初始化测试变量，在运行测试之前，对必要的变量初始化"
  (setq *test-suite* ())
  (setq *test-results* ())
  (setq *test-pass-count* 0)
  (setq *test-fail-count* 0)
  )
