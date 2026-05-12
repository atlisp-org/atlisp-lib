;;; test-astronomy-sha.lsp - astronomy:sha 测试
(defun test:astronomy-sha ()
  (test:suite 'astronomy)
  (test:add-case 'astronomy 'sha '((lambda () (vl-catch-all-apply 'astronomy:sha (list 12)))) 0.0)
  (test:add-case 'astronomy 'sha '((lambda () (vl-catch-all-apply 'astronomy:sha (list 6)))) -90.0)
  (test:run-all))
(test:astronomy-sha)