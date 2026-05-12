;;; test-dcl-end-cluster.lsp - dcl:end-cluster 测试
(defun test:dcl-end-cluster ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'end-cluster '((lambda () (vl-catch-all-apply 'dcl:end-cluster (list)))) nil)
  (test:run-all))
(test:dcl-end-cluster)
