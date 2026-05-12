; test-m-azimuth.lsp - m:azimuth 函数测试
(load "src/fun/test-framework")
(load "src/m/azimuth")

(test:suite 'm-azimuth)

(test:add-case 'm-azimuth 'test-0
  '((lambda () (m:azimuth 0)))
  1.5707963268)

(test:add-case 'm-azimuth 'test-pi-2
  '((lambda () (m:azimuth 0.5 pi)))
  0.0)

(test:add-case 'm-azimuth 'test-pi
  '((lambda () (m:azimuth pi)))
  4.7123889804)

(test:add-case 'm-azimuth 'test-quarter
  '((lambda () (m:azimuth (* 0.5 pi))))
  0.0)

(test:run-all)