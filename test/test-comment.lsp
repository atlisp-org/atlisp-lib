;; test-src.lsp - @lisp 函数库测试用例

(test:clear)

(test:suite 'string)

(test:add-case 'string 'test1
  '((lambda () "result"))
  "result")

(test:add-case 'string 'test2
  '((lambda () "result2"))
  "result2")