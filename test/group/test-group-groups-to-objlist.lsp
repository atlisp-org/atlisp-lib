;;; test-group-groups-to-objlist.lsp - group:groups-to-objlist 测试
(defun test:group-groups-to-objlist ()
  (test:suite 'group)
  (test:add-case 'group 'groups-to-objlist '((lambda () (vl-catch-all-apply 'group:groups-to-objlist nil))) nil)
  (test:run-all))
(test:group-groups-to-objlist)