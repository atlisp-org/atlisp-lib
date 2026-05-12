(princ "loading test-trace.lsp\n")

(test:clear)

(princ "after test:clear\n")

(test:suite 'string)

(princ "after test:suite\n")

(princ "about to call test:add-case\n")

(test:add-case 'string 'test1 '((lambda () "result")) "result")

(princ "done loading\n")