(defun test:clear ()
  "清空所有测试套件、结果和计数器"
  "返回: nil"
  "说明: 重置所有全局变量 *test-suite*, *test-results*, *test-pass-count*, *test-fail-count*"
  "示例: (test:clear)"
  (setq *test-suite* ())
  (setq *test-results* ())
  (setq *test-pass-count* 0)
  (setq *test-fail-count* 0)
  nil)
