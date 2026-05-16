(defun test:summary ()
  "输出当前测试结果的通过/失败摘要"
  "返回: nil"
  "说明: 打印格式为 Pass: N, Fail: N 的摘要信息"
  "示例: (test:summary)"
  (princ (string:format "Pass: %d, Fail: %d\n" *test-pass-count* *test-fail-count*)))
