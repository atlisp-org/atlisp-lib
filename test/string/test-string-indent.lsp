; test-string-indent.lsp - string:indent 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/indent")

(test:suite 'string-indent)

(test:add-case 'string-indent 'test-indent-basic
  '((lambda () (string:indent "(defun test () (print 1))")))
  "(defun test ()\n    (print 1))")

(test:add-case 'string-indent 'test-indent-nested
  '((lambda () (string:indent "(if a (progn (print 1) (print 2)))")))
  "(if a\n    (progn\n        (print 1)\n        (print 2)))")

(test:add-case 'string-indent 'test-indent-simple
  '((lambda () (string:indent "(+ 1 2)")))
  "(+ 1 2)")

(test:run-all)