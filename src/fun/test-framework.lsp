;;;============================================================
;;; test-framework.lsp - @lisp 测试框架
;;;============================================================
;;; 作者: VitalGG
;;; 描述: 用于 AutoLisp 函数的单元测试框架
;;;============================================================

;;;------------------------------------------------------------
;;; 依赖加载
;;;------------------------------------------------------------
;; (require '(list:equal string:format))
;; list:equal - 比较包含浮点数的列表是否相等
;; string:format - 字符串格式化输出
(defun test:test-framework ()
  "测试框架，开发中"
  )
;;;------------------------------------------------------------
;;; 全局变量定义
;;;------------------------------------------------------------

(setq *test-suite* ())
(setq *test-results* ())
(setq *test-pass-count* 0)
(setq *test-fail-count* 0)
;; 失败的测试数量

;;;------------------------------------------------------------
;;; test:suite - 创建测试套件
;;; 参数: name - 套件名称（符号）
;;; 返回: 新创建的套件
;;; 示例: (test:suite 'math)
;;;------------------------------------------------------------
(defun test:suite (name)
  "创建测试套件"
  ;; 检查套件是否已存在
  (if (not (member name (mapcar 'car *test-suite*)))
      (progn
        ;; 将新套件添加到列表头部
        (setq *test-suite* (cons (list name) *test-suite*))))
  ;; 返回套件
  (assoc name *test-suite*))

;;;------------------------------------------------------------
;;; test:add-case - 添加测试用例
;;; 参数:
;;;   suite-name  - 套件名称（符号）
;;;   test-name   - 测试用例名称（符号）
;;;   test-fn     - 测试函数（包含 lambda 的列表）
;;;   expected    - 期望的返回值
;;; 返回: nil
;;; 示例: 
;;;   (test:add-case 'math 'add '((lambda () (+ 1 2))) 3)
;;;   (test:add-case 'math 'gcd '((lambda () (m:gcd 12 8))) 4)
;;;------------------------------------------------------------
(defun test:add-case (suite-name test-name test-fn expected)
  "添加测试用例 (test:add-case 'suite 'test-name '(lambda () ... ) expected)"
  (setq *test-suite*
        (mapcar '(lambda (s)
                   (if (eq (car s) suite-name)
                       (append s (list (list test-name test-fn expected)))
                     s))
        *test-suite*))
  nil)

;;;------------------------------------------------------------
;;; test:assert-equal - 断言相等
;;; 参数:
;;;   expected - 期望值
;;;   actual   - 实际值
;;;   fuzz     - 浮点数比较的容差
;;; 返回: t 或 nil
;;; 说明:
;;;   - 数字使用 equal 比较（支持浮点数容差）
;;;   - 列表使用 list:equal 递归比较
;;;   - 其他类型使用 equal 直接比较
;;;------------------------------------------------------------
(defun test:assert-equal (expected actual fuzz)
  "断言相等，支持浮点数比较"
  (cond
   ;; 两者都是数字，使用容差比较
   ((and (numberp expected) (numberp actual))
  (equal expected actual fuzz))
   ;; 两者都是列表，递归比较每个元素
   ((and (listp expected) (listp actual))
  (list:equal expected actual fuzz))
   ;; 其他类型直接比较
   (t (equal expected actual))))

;;;------------------------------------------------------------
;;; test:assert-nil - 断言为 nil
;;; 参数: val - 要测试的值
;;; 返回: t 或 nil
;;;------------------------------------------------------------
(defun test:assert-nil (val)
  "断言为 nil"
  (null val))

;;;------------------------------------------------------------
;;; test:assert-t - 断言为 t
;;; 参数: val - 要测试的值
;;; 返回: t 或 nil
;;;------------------------------------------------------------
(defun test:assert-t (val)
  "断言为 t"
  (not (null val)))

;;;------------------------------------------------------------
;;; test:assert-throw - 断言函数抛出异常
;;; 参数:
;;;   fn            - 要调用的函数
;;;   args          - 函数参数列表
;;;   expected-error - 期望的错误（暂未使用）
;;; 返回: 函数的返回值或错误对象
;;;------------------------------------------------------------
(defun test:assert-throw (fn args expected-error)
  "断言函数抛出异常"
  ;; 使用 vl-catch-all-apply 安全地调用函数
  (vl-catch-all-apply fn args))

;;;------------------------------------------------------------
;;; test:run-case - 运行单个测试用例
;;; 参数:
;;;   test-name - 测试用例名称
;;;   test-fn   - 测试函数
;;;   expected  - 期望值
;;; 局部变量:
;;;   result - 函数执行结果
;;;   pass   - 测试是否通过
;;; 返回: t 或 nil
;;;------------------------------------------------------------
(defun test:run-case (test-name test-fn expected / result pass fn)
  "运行单个测试用例"
  ;; 检查参数有效性（expected 可以为 nil）
  (if (or (null test-name) (null test-fn))
      (progn
        (princ (string:format "[ERROR] Invalid test parameters: name=%s fn=%s expected=%s\n"
                              (vl-symbol-name test-name) test-fn expected))
        (setq *test-fail-count* (1+ *test-fail-count*))
        (return nil)))
  ;; 提取 lambda 函数（支持 '((lambda () ...)) 和 '(lambda () ...) 两种格式）
  (setq fn (if (and (listp test-fn) (listp (car test-fn)))
               (car test-fn)
             test-fn))
  ;; 使用 vl-catch-all-apply 安全执行测试函数
  (setq result (vl-catch-all-apply fn (list)))
  ;; 检查是否发生错误，并比较结果
  (setq pass (if (vl-catch-all-error-p result)
                 ;; 如果发生错误，测试失败
                 nil
               ;; 否则比较实际值与期望值
               (test:assert-equal expected result 1e-6)))
  ;; 更新统计计数器
  (if pass
      (progn (setq *test-pass-count* (1+ *test-pass-count*)) t)
  (progn (setq *test-fail-count* (1+ *test-fail-count*)) nil))
  ;; 保存测试结果
  (setq *test-results* (cons (list test-name pass result expected) *test-results*))
  ;; 输出测试结果
  (if pass
      (princ (string:format "[PASS] %s\n" (if test-name (vl-symbol-name test-name) "unknown")))
  (princ (string:format "[FAIL] %s - Expected: %s, Got: %s\n" (if test-name (vl-symbol-name test-name) "unknown") expected result)))
  pass)

;;;------------------------------------------------------------
;;; test:run-suite - 运行指定测试套件
;;; 参数: suite-name - 要运行的套件名称
;;; 局部变量:
;;;   suite  - 套件数据
;;;   cases  - 测试用例列表
;;; 返回: nil
;;;------------------------------------------------------------
(defun test:run-suite (suite-name / suite cases)
  "运行测试套件"
  (foreach s *test-suite*
  (if (eq (car s) suite-name)
    (progn
          ;; 获取套件数据
          (setq suite s)
          (setq cases (cdr s))
          ;; 输出套件标题
          (princ (string:format "\n=== Running Suite: %s ===\n" (vl-symbol-name suite-name)))
          ;; 运行每个测试用例
          (mapcar '(lambda(c)
          (test:run-case (car c) (cadr c) (caddr c)))
                  cases))))
  nil)

;;;------------------------------------------------------------
;;; test:run-all - 运行所有测试套件
;;; 返回: t（全部通过）或 nil（有失败）
;;; 说明: 打印完整的测试报告，包含：
;;;   - 测试标题
;;;   - 每个套件的运行结果
;;;   - 通过/失败/总数统计
;;;   - 总体结论
;;;------------------------------------------------------------
(defun test:run-all ()
  "运行所有测试套件"
  ;; 重置计数器
  (setq *test-pass-count* 0)
  (setq *test-fail-count* 0)
  (setq *test-results* ())
  ;; 打印测试报告头部
  (princ "\n========================================\n")
  (princ "         Test Framework Report\n")
  (princ "========================================\n")
  ;; 运行每个套件
  (foreach s *test-suite*
  (test:run-suite (car s)))
  ;; 打印统计摘要
  (princ (string:format "\n--- Summary ---\nPassed: %d\nFailed: %d\nTotal: %d\n"
            *test-pass-count*
            *test-fail-count*
            (+ *test-pass-count* *test-fail-count*)))
  ;; 打印最终结论
  (if (= *test-fail-count* 0)
      (princ "\nAll tests passed! ✓\n")
  (princ (strcat "\n" (itoa *test-fail-count*) " test(s) failed! ✗\n")))
  (princ "\n")
  ;; 返回测试结果
  (if (> *test-fail-count* 0) nil t))

;;;------------------------------------------------------------
;;; test:clear - 清空所有测试数据
;;; 返回: nil
;;; 说明: 重置所有全局变量，清空测试套件和结果
;;;------------------------------------------------------------
(defun test:clear ()
  "清空所有测试用例"
  (setq *test-suite* ())
  (setq *test-results* ())
  (setq *test-pass-count* 0)
  (setq *test-fail-count* 0)
  nil)

;;;------------------------------------------------------------
;;; test:summary - 输出测试摘要
;;; 返回: nil
;;; 说明: 打印通过和失败的数量
;;;------------------------------------------------------------
(defun test:summary ()
  "输出测试摘要"
  (princ (string:format "Pass: %d, Fail: %d\n" *test-pass-count* *test-fail-count*)))

;;;============================================================
;;; 使用示例
;;;============================================================
;; 创建测试套件
;; (test:suite 'math)
;;
;; 添加测试用例
;; (test:add-case 'math 'add '((lambda () (+ 1 2))) 3)
;; (test:add-case 'math 'gcd '((lambda () (m:gcd 12 8))) 4)
;; (test:add-case 'math 'divide '((lambda () (/ 10 2))) 5)
;;
;; 运行所有测试
;; (test:run-all)
;;
;; 预期输出:
;; ========================================
;;          Test Framework Report
;; ========================================
;;
;; === Running Suite: math ===
;; [PASS] add
;; [PASS] gcd
;; [PASS] divide
;;
;; --- Summary ---
;; Passed: 3, Failed: 0, Total: 3
;;
;; All tests passed! ✓
;;============================================================
