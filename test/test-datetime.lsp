; datetime: 日期时间函数测试用例

(test:suite 'datetime-func)

; datetime:leap-yearp 测试 - 闰年判断
(test:add-case 'datetime-func 'leap-year-2000
  '((lambda () (datetime:leap-yearp 2000)))
  t)

(test:add-case 'datetime-func 'leap-year-2004
  '((lambda () (datetime:leap-yearp 2004)))
  t)

(test:add-case 'datetime-func 'leap-year-2008
  '((lambda () (datetime:leap-yearp 2008)))
  t)

(test:add-case 'datetime-func 'not-leap-year-1900
  '((lambda () (datetime:leap-yearp 1900)))
  nil)

(test:add-case 'datetime-func 'not-leap-year-2001
  '((lambda () (datetime:leap-yearp 2001)))
  nil)

(test:add-case 'datetime-func 'not-leap-year-2002
  '((lambda () (datetime:leap-yearp 2002)))
  nil)

(test:add-case 'datetime-func 'not-leap-year-2003
  '((lambda () (datetime:leap-yearp 2003)))
  nil)

; datetime:get-current-year 测试
(test:add-case 'datetime-func 'get-current-year
  '((lambda () (datetime:get-current-year)))
  2026)

; datetime:get-current-month 测试
(test:add-case 'datetime-func 'get-current-month-range
  '((lambda () (let ((m (datetime:get-current-month))) (and (<= 1 m) (<= m 12)))))
  t)

; datetime:get-current-day 测试
(test:add-case 'datetime-func 'get-current-day-range
  '((lambda () (let ((d (datetime:get-current-day))) (and (<= 1 d) (<= d 31)))))
  t)

(test:run-all)