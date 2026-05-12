;;; test-block-wcs2bcs.lsp - block:wcs2bcs 测试
(defun test:block-wcs2bcs ()
  (test:suite 'block)
  (test:add-case 'block 'wcs2bcs '((lambda () (block:wcs2bcs))) nil)
  (test:run-all))
(test:block-wcs2bcs)
