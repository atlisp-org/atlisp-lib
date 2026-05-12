;;; test-hdinfo-get-mac.lsp - hdinfo:get-mac 测试
(defun test:hdinfo-get-mac ()
  (test:suite 'hdinfo)
  (test:add-case 'hdinfo 'get-mac '((lambda () (vl-catch-all-apply 'hdinfo:get-mac nil))) nil)
  (test:run-all))
(test:hdinfo-get-mac)