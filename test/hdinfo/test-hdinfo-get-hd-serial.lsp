;;; test-hdinfo-get-hd-serial.lsp - hdinfo:get-hd-serial 测试
(defun test:hdinfo-get-hd-serial ()
  (test:suite 'hdinfo)
  (test:add-case 'hdinfo 'get-hd-serial '((lambda () (vl-catch-all-apply 'hdinfo:get-hd-serial nil))) nil)
  (test:run-all))
(test:hdinfo-get-hd-serial)