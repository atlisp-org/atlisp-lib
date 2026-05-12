; test-list-positions.lsp - list:positions 函数测试
(load "src/fun/test-framework")
(load "src/list/positions")

(test:suite 'list-positions)

(test:add-case 'list-positions 'test-positions-1
  '((lambda () (list:positions 'a '(a b a c a))))
  '(0 2 4))

(test:add-case 'list-positions 'test-positions-2
  '((lambda () (list:positions 'x '(a b c))))
  nil)

(test:add-case 'list-positions 'test-positions-3
  '((lambda () (list:positions 'b '(b b b))))
  '(0 1 2))

(test:add-case 'list-positions 'test-positions-4
  '((lambda () (list:positions '1 '(1 2 1 3))))
  '(0 2))

(test:run-all)