(defun example:sort nil "排序示例.用于演示 vl-sort 自定义排序函数的代码。n1 n2 表示 列表内任意两个数，lambda 对这两个数进行比较。根据比较结果进行排序。"
  "偶数从大到小，奇数从小到大,偶数在前"
  "(example:sort)
  => (8 6 4 2 0 1 3 5 7 9)"
  (vl-sort (list 1 2 4 5 6 7 8 9 0 3)
    (function (lambda (n1 n2)
        (if (= 0 (rem n1 2))
          (progn "前者为偶时"
            (if (= 0 (rem n2 2))
              (progn "如果后者也为偶，比大小"
                (> n1 n2))
              (progn "如果后者不为偶，保持"
                t)))
          (progn "前者为奇的情况"
            (if (/= 0 (rem n2 2))
              (progn "如果后者也为奇， 小数在前"
                (< n1 n2))
              (progn "后者不为奇，换位"
                nil))))))))
