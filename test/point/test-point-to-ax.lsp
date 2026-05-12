;;; test-point-to-ax.lsp - point:to-ax 测试
(defun test:point-to-ax ()
  (test:suite 'point)
  (test:add-case 'point 'to-ax '((lambda () (vl-catch-all-apply 'point:to-ax (list '(5 5 0)))) 'vlax-3d-point)
  (test:run-all))
(test:point-to-ax)