;;; test-block-bcs2wcs.lsp - block:bcs2wcs 测试
(defun test:block-bcs2wcs ()
  (test:suite 'block)
  (test:add-case 'block 'bcs2wcs '((lambda () (block:bcs2wcs))) nil)
  (test:run-all))
(test:block-bcs2wcs)
