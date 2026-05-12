; test-pickset-pt-verts.lsp - pickset:pt-verts 函数测试
(load "src/fun/test-framework")
(load "src/pickset/pt-verts")

(test:suite 'pickset:pt-verts)

(test:add-case 'pickset:pt-verts 'test-no-error
  '((lambda () (setq result (vl-catch-all-apply 'pickset:pt-verts (list)))
   (not (vl-catch-all-error-p result)))
   t)

(test:run-all)
