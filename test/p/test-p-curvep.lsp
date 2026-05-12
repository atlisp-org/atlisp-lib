; test-p-curvep.lsp - p:curvep 函数测试
(load "src/fun/test-framework")
(load "src/p/curvep")

(test:suite 'p-curvep)

(test:add-case 'p-curvep 'test-nil
  '((lambda () (p:curvep nil)))
  nil)

(test:add-case 'p-curvep 'test-int
  '((lambda () (p:curvep 123)))
  nil)

(test:run-all)