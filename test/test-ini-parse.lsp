; ini:parse 函数测试用例
; 使用方法: (test:suite 'ini-parse) 然后添加测试用例
; 依赖: @::*prefix* 变量由 @lisp kernel 定义，需先加载 kernel 环境

(test:suite 'ini-parse)

; 测试1: 正常INI文件解析
(test:add-case 'ini-parse 'simple-parse
  '((lambda ()
     (ini:parse (strcat @::*prefix* "test/sample.ini"))))
  '(("[section1" ("key1" . "value1") ("key2" . "value2"))
    ("[section2" ("key3" . "value3"))))

; 测试2: 空文件
(test:add-case 'ini-parse 'empty-file
  '((lambda ()
     (ini:parse (strcat @::*prefix* "test/empty.ini"))))
  nil)

; 测试3: 文件不存在
(test:add-case 'ini-parse 'nonexistent-file
  '((lambda ()
     (ini:parse (strcat @::*prefix* "test/notexist.ini"))))
  nil)

; 测试4: 带注释的INI文件
(test:add-case 'ini-parse 'with-comments
  '((lambda ()
     (ini:parse (strcat @::*prefix* "test/comments.ini"))))
  '(("[database]" ("host" . "localhost") ("port" . "3306"))))

; 测试5: 空行的INI文件
(test:add-case 'ini-parse 'with-empty-lines
  '((lambda ()
     (ini:parse (strcat @::*prefix* "test/emptylines.ini"))))
  '(("[section]" ("key" . "value"))))

; 运行测试
(test:run-all)