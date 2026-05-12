;; test-src.lsp - @lisp 函数库测试用例
;; 使用方法: (test:run-all)
;; 运行前需加载: (load "src/fun/test-framework.lsp")

(test:clear)

;;============================================================
;; 字符串测试套件
;;============================================================
(test:suite 'string)

(test:add-case 'string 'subst-all-replace
  '((lambda () (string:subst-all "qwe" "abc" "mabcpoildabce")))
  "mqwepoildqwee")

(test:add-case 'string 'subst-all-empty-old
  '((lambda () (string:subst-all "x" "" "abc")))
  "abc")

(test:add-case 'string 'reverse-ascii
  '((lambda () (string:reverse "hello")))
  "olleh")

(test:add-case 'string 'reverse-chinese
  '((lambda () (string:reverse "你好")))
  "好你")

(test:add-case 'string 'trim-space-both
  '((lambda () (string:trim-space "  hello  ")))
  "hello")

(test:add-case 'string 'trim-space-left
  '((lambda () (string:trim-space "  hello")))
  "hello")

(test:add-case 'string 'trim-space-right
  '((lambda () (string:trim-space "hello  ")))
  "hello")

(test:add-case 'string 'split-basic
  '((lambda () (string:split "," "a,b,c")))
  '("a" "b" "c"))

(test:add-case 'string 'split-no-match
  '((lambda () (string:split "," "abc")))
  '("abc"))

(test:add-case 'string 'concat-basic
  '((lambda () (string:concat "a" "b" "c")))
  "abc")

(test:add-case 'string 'length-ascii
  '((lambda () (string:length "hello")))
  5)

(test:add-case 'string 'length-chinese
  '((lambda () (string:length "你好")))
  2)

(test:add-case 'string 'case-upper
  '((lambda () (string:case "hello" 1)))
  "HELLO")

(test:add-case 'string 'case-lower
  '((lambda () (string:case "HELLO" 2)))
  "hello")

(test:add-case 'string 'search-found
  '((lambda () (string:search "bc" "abcdef")))
  1)

(test:add-case 'string 'search-not-found
  '((lambda () (string:search "xyz" "abcdef")))
  nil)

(test:add-case 'string 'substr-basic
  '((lambda () (string:substr "abcdef" 3 2)))
  "cd")

(test:add-case 'string 'substr-from-end
  '((lambda () (string:rightsubstr "abcdef" 3)))
  "def")

(test:add-case 'string 'realp-true
  '((lambda () (string:realp "123.45")))
  t)

(test:add-case 'string 'realp-false
  '((lambda () (string:realp "abc")))
  nil)

(test:add-case 'string 'numberp-true
  '((lambda () (string:numberp "123")))
  t)

(test:add-case 'string 'numberp-false
  '((lambda () (string:numberp "12.3.4")))
  nil)

(test:add-case 'string 'intp-true
  '((lambda () (string:intp "123")))
  t)

(test:add-case 'string 'intp-false
  '((lambda () (string:intp "12.3")))
  nil)

(test:add-case 'string 'to-list
  '((lambda () (string:to-list "abc")))
  '(97 98 99))

(test:add-case 'string 'from-list
  '((lambda () (string:from-list '(97 98 99)))
  "abc")

;;============================================================
;; 列表测试套件
;;============================================================
(test:suite 'list)

(test:add-case 'list 'union-basic
  '((lambda () (list:union '(1 2 3) '(3 4 5)))
  '(1 2 3 4 5))

(test:add-case 'list 'intersect-basic
  '((lambda () (list:intersect '(1 2 3) '(2 3 4)))
  '(2 3))

(test:add-case 'list 'difference-basic
  '((lambda () (list:difference '(1 2 3 4) '(3 4 5)))
  '(1 2))

(test:add-case 'list '+-basic
  '((lambda () (list:+ '(1 2) '(3 4)))
  '(4 6))

(test:add-case 'list '---basic
  '((lambda () (list:- '(5 6) '(1 2)))
  '(4 4))

(test:add-case 'list 'flatten-nested
  '((lambda () (list:flatten '(1 (2 (3)) 4)))
  '(1 2 3 4))

(test:add-case 'list 'flatten-simple
  '((lambda () (list:flatten '(1 2 3)))
  '(1 2 3))

(test:add-case 'list 'sort-basic
  '((lambda () (list:sort '(3 1 2) '<)))
  '(1 2 3))

(test:add-case 'list 'sort-desc
  '((lambda () (list:sort '(3 1 2) '>)))
  '(3 2 1))

(test:add-case 'list 'remove-nth-basic
  '((lambda () (list:remove-nth 1 '(a b c d)))
  '(a c d))

(test:add-case 'list 'remove-duplicates
  '((lambda () (list:remove-duplicates '(1 2 2 3 1)))
  '(1 2 3))

(test:add-case 'list 'member-basic
  '((lambda () (list:member 3 '(1 2 3 4)))
  '(3 4))

(test:add-case 'list 'member-not-found
  '((lambda () (list:member 5 '(1 2 3)))
  nil)

(test:add-case 'list 'sublist-basic
  '((lambda () (list:sublist 1 3 '(a b c d e)))
  '(b c d))

(test:add-case 'list 'range-basic
  '((lambda () (list:range 1 5)))
  '(1 2 3 4 5))

(test:add-case 'list 'split-basic
  '((lambda () (list:split 3 '(1 2 3 4 5 6)))
  '((1 2 3) (4 5 6)))

(test:add-case 'list 'insert-basic
  '((lambda () (list:insert '(a c) 1 'b)))
  '(a b c))

(test:add-case 'list 'fill-basic
  '((lambda () (list:fill 3 'x)))
  '(x x x))

(test:add-case 'list 'trim-basic
  '((lambda () (list:trim '(nil a b nil nil)))
  '(a b))

(test:add-case 'list 'ltrim-basic
  '((lambda () (list:ltrim '(nil nil a b)))
  '(a b))

(test:add-case 'list 'rtrim-basic
  '((lambda () (list:rtrim '(a b nil nil)))
  '(a b))

(test:add-case 'list 'replace-index
  '((lambda () (list:replace-index 1 '(a b c) 'x)))
  '(a x c))

(test:add-case 'list 'search-item
  '((lambda () (list:search-item 'b '(a b c d)))
  1)

(test:add-case 'list 'search-index
  '((lambda () (list:search-index 1 '(a b c d)))
  'b)

(test:add-case 'list 'exist-true
  '((lambda () (list:exist 3 '(1 2 3)))
  t)

(test:add-case 'list 'exist-false
  '((lambda () (list:exist 5 '(1 2 3)))
  nil)

(test:add-case 'list 'same-true
  '((lambda () (list:same '(a b c) '(a b c)))
  t)

(test:add-case 'list 'same-false
  '((lambda () (list:same '(a b) '(a b c)))
  nil)

(test:add-case 'list 'same-num-true
  '((lambda () (list:same-num '(1.0 2.0) '(1 2)))
  t)

(test:add-case 'list 'group-by-basic
  '((lambda () (list:group-by '(a a b b a) '<)))
  '((a a a) (b b)))

;;============================================================
;; 点测试套件
;;============================================================
(test:suite 'point)

(test:add-case 'point 'mid-basic
  '((lambda () (point:mid '(0 0) '(10 0)))
  '(5 0 0))

(test:add-case 'point 'mid-3d
  '((lambda () (point:mid '(0 0 0) '(10 20 30)))
  '(5 10 15))

(test:add-case 'point 'div-basic
  '((lambda () (point:div '(10 20) 2)))
  '(5 10 0))

(test:add-case 'point 'div-3d
  '((lambda () (point:div '(10 20 30) 2)))
  '(5 10 15))

(test:add-case 'point 'in-box-true
  '((lambda () (point:in-box '(5 5) '(0 0) '(10 10)))
  t)

(test:add-case 'point 'in-box-false
  '((lambda () (point:in-box '(15 15) '(0 0) '(10 10)))
  nil)

(test:add-case 'point '2d-to-3d
  '((lambda () (point:2d-to-3d '(5 5)))
  '(5 5 0))

(test:add-case 'point '3d-to-2d
  '((lambda () (point:3d-to-2d '(5 5 10)))
  '(5 5))

(test:add-case 'point 'remove-duplicates-basic
  '((lambda () (point:remove-duplicates '((0 0) (1 1) (0 0) (2 2))))
  '((0 0) (1 1) (2 2)))

(test:add-case 'point 'rec-2pt-to-4pt-basic
  '((lambda () (point:rec-2pt-to-4pt '(0 0) '(10 10)))
  '((0 0) (10 0) (10 10) (0 10)))

;;============================================================
;; 数学测试套件
;;============================================================
(test:suite 'math)

(test:add-case 'math 'fermat-test-prime
  '((lambda () (m:fermat-test 7)))
  t)

(test:add-case 'math 'fermat-test-not-prime
  '((lambda () (m:fermat-test 4)))
  nil)

;;============================================================
;; 运行所有测试
;;============================================================
(test:run-all)
