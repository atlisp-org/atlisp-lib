;;; test-iconv-gb2312-to-quwei.lsp - iconv:gb2312-to-quwei 测试
(defun test:iconv-gb2312-to-quwei ()
  (test:suite 'iconv)
  (test:add-case 'iconv 'gb2312-to-quwei '((lambda () (vl-catch-all-apply 'iconv:gb2312-to-quwei (list)))) nil)
  (test:run-all))
(test:iconv-gb2312-to-quwei)
