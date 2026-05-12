; test-string-subst-all.lsp - string:subst-all 函数测试
; 依赖: @lisp kernel 环境
(load "src/fun/test-framework")
(load "src/string/subst-all")

(test:suite 'string-subst-all)

(test:add-case 'string-subst-all 'test-subst-all-basic
  '((lambda () (string:subst-all "qwe" "abc" "mabcpoildabce")))
  "mqwepoildqwee")

(test:add-case 'string-subst-all 'test-subst-all-multiple
  '((lambda () (string:subst-all "x" "a" "abaca")))
  "xbxcx")

(test:add-case 'string-subst-all 'test-subst-all-none
  '((lambda () (string:subst-all "x" "z" "abc")))
  "abc")

(test:add-case 'string-subst-all 'test-subst-all-empty-new
  '((lambda () (string:subst-all "" "a" "banana")))
  "bnnn")

(test:run-all)