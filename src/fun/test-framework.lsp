(require '(list:equal string:format))

(defvar *test-suite* ())
(defvar *test-results* ())
(defvar *test-pass-count* 0)
(defvar *test-fail-count* 0)

(defun test:suite (name)
  "创建测试套件"
  (setq *test-suite* (cons (list name '()) *test-suite*))
  (car *test-suite*))

(defun test:add-case (suite-name test-name test-fn expected)
  "添加测试用例 (test:add-case 'suite 'test-name '(lambda () ... ) expected)"
  (foreach s *test-suite*
    (if (= (car s) suite-name)
        (setq s (append s (list (list test-name test-fn expected))))))
  nil)

(defun test:assert-equal (expected actual fuzz)
  "断言相等，支持浮点数比较"
  (cond
   ((and (numberp expected) (numberp actual))
    (equal expected actual fuzz))
   ((and (listp expected) (listp actual))
    (list:equal expected actual fuzz))
   (t (equal expected actual))))

(defun test:assert-nil (val)
  "断言为 nil"
  (null val))

(defun test:assert-t (val)
  "断言为 t"
  (not (null val)))

(defun test:assert-throw (fn args expected-error)
  "断言函数抛出异常"
  (vl-catch-all-apply fn args))

(defun test:run-case (test-name test-fn expected / result pass)
  "运行单个测试用例"
  (setq result (vl-catch-all-apply test-fn (list)))
  (setq pass (if (vl-catch-all-error-p result)
                 nil
               (test:assert-equal expected result 1e-6)))
  (if pass
      (progn (setq *test-pass-count* (1+ *test-pass-count*)) t)
    (progn (setq *test-fail-count* (1+ *test-fail-count*)) nil))
  (setq *test-results* (cons (list test-name pass result expected) *test-results*))
  (if pass
      (princ (string:format "[PASS] %s\n" test-name))
    (princ (string:format "[FAIL] %s - Expected: %s, Got: %s\n" test-name expected result)))
  pass)

(defun test:run-suite (suite-name / suite cases)
  "运行测试套件"
  (foreach s *test-suite*
    (if (= (car s) suite-name)
        (progn
          (setq suite s)
          (setq cases (cdr s))
          (princ (string:format "\n=== Running Suite: %s ===\n" suite-name))
          (mapcar '(lambda(c)
                    (test:run-case (car c) (cadr c) (caddr c)))
                  cases))))
  nil)

(defun test:run-all ()
  "运行所有测试套件"
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

(defun test:clear ()
  "清空所有测试用例"
  (setq *test-suite* ())
  (setq *test-results* ())
  (setq *test-pass-count* 0)
  (setq *test-fail-count* 0)
  nil)

(defun test:summary ()
  "输出测试摘要"
  (princ (string:format "Pass: %d, Fail: %d\n" *test-pass-count* *test-fail-count*)))

;; 示例用法:
;; (test:suite 'math)
;; (test:add-case 'math 'add '((lambda () (+ 1 2))) 3)
;; (test:add-case 'math 'gcd '((lambda () (m:gcd 12 8))) 4)
;; (test:run-all)