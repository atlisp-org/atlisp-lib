;;; test-hdinfo-get-cpuid.lsp - hdinfo:get-cpuid 测试
(defun test:hdinfo-get-cpuid ()
  (test:suite 'hdinfo)
  (test:add-case 'hdinfo 'get-cpuid '((lambda () (vl-catch-all-apply 'hdinfo:get-cpuid nil))) nil)
  (test:run-all))
(test:hdinfo-get-cpuid)