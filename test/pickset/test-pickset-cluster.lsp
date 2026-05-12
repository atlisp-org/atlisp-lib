; test-pickset-cluster.lsp - pickset:cluster 函数测试
(load "src/fun/test-framework")
(load "src/pickset/cluster")

(test:suite 'pickset:cluster)

(test:add-case 'pickset:cluster 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:cluster (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
