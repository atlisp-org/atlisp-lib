;;; test-dcl-begin-cluster.lsp - dcl:begin-cluster 测试
(defun test:dcl-begin-cluster ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'begin-cluster '((lambda () (vl-catch-all-apply 'dcl:begin-cluster (list)))) nil)
  (test:run-all))
(test:dcl-begin-cluster)
