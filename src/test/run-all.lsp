(defun test:run-all ()
  "运行所有测试套件并生成测试报告"
  "返回: t - 全部通过；nil - 有失败的测试"
  "说明: 自动重置计数器，逐个运行所有套件，打印完整测试报告（包含标题、各套件结果、通过/失败/总数统计和总体结论）"
  "示例: (test:run-all)"
  (setq *test-pass-count* 0)
  (setq *test-fail-count* 0)
  (setq *test-results* ())
  (princ "\n========================================\n")
  (princ "         Test Framework Report\n")
  (princ "========================================\n")
  (foreach s *test-suite*
    (test:run-suite (car s)))
  (princ (string:format "\n--- Summary ---\nPassed: %d\nFailed: %d\nTotal: %d\n"
                        *test-pass-count*
                        *test-fail-count*
                        (+ *test-pass-count* *test-fail-count*)))
  (if (= *test-fail-count* 0)
      (princ "\nAll tests passed! ✓\n")
    (princ (strcat "\n" (itoa *test-fail-count*) " test(s) failed! ✗\n")))
  (princ "\n")
  (if (> *test-fail-count* 0) nil t))
